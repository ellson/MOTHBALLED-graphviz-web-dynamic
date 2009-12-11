#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release" pub/graphviz/stable
    "development snapshot" pub/graphviz/development
}

set packages_platforms {
    graphviz {snowleopard leopard}
}

set package_exclude {
    graphviz-cairo-
    graphviz-win-
}

set platform_directory_type_comments {
    snowleopard macos/snowleopard {pkg} "MacOS 10.6 (Snow Leopard)"
    leopard macos/leopard {pkg} "MacOS 10.5 (Leopard)"
}

#    tiger macos/tiger {pkg} "MacOS 10.4 (Tiger)"
#    Sources SOURCES {tar.gz} ""

set time_cutoff [expr {[clock seconds] - 36*60*60}]
proc checkdate {fnv} {
    global time_cutoff
    set color blue
    foreach {fn v} $fnv {break}
    set lst [split $v {-.}]
    if {[llength $lst] >= 5} {
        foreach {. . dt tm .} $lst {break}
        set time_stamp [clock scan [string range $dt 2 end]T${tm}00 -gmt 1]
        if {$time_stamp < $time_cutoff} {
            set color red
        }
    }
    return [list $fn $color]
}
                                                                                
proc puts_latest {fout docroot dir package package_exclude type} {
    set regexp {([-a-zA-Z]*)([-0-9.]*)([a-z][.a-z0-9]*)}
    if {![file exists $docroot/$dir]} {
        puts $fout "<font color=\"red\">Directory \"$docroot/$dir/\" was not found.</font>"
        return
    }
    set owd [pwd]
    cd $docroot/$dir
    foreach {fn n v t} [regexp -all -inline $regexp [glob -nocomplain *]] {
        if {[file isdir $fn]} {continue}
	set exclude_this 0
        foreach {excl} $package_exclude {
	    if {[string first $excl $fn] == 0} {incr exclude_this}
        }
        if {$exclude_this} {continue}
        if {[string first $package $fn] == 0} {
            lappend PACKAGE([list $n $t]) [list $fn $v]
        }
    }
    foreach nt [array names PACKAGE] {
      foreach {n t} $nt {break}
      lappend FILES($t) [lindex [lsort -decreasing -dictionary -index 1 $PACKAGE($nt)] 0]
    }
    cd $owd
    if {[info exists FILES($type)]} {
        foreach {fnv} [lsort $FILES($type)] {
	    foreach {fn color} [checkdate $fnv] {break}
	    puts $fout "<a href=\"/$dir/$fn\"><font color=\"$color\">$fn</font></a><br>"
        }
    }
}

set fout [open Download_macos.ht w]

puts $fout "<table frame=\"void\" rules=\"groups\" border=\"1\" width=\"100%\">"
for {set i 0} {$i <= [llength $releases] / 2} {incr i} {
    puts $fout "<colgroup><col></colgroup>"
}

foreach {package platforms} $packages_platforms {
    puts $fout "<!--- The file is automatically generated by macos_current.tcl --->"
#    puts $fout "The current <b>stable</b> release <b>does not install cleanly"
#    puts $fout "on OSX 10.6 (Snow Leopard)</b>. We know this! No need to file"
#    puts $fout "any bug reports. The current <b>development</b> release installs"
#    puts $fout "cleanly on OSX 10.6, but it can crash if the graph file"
#    puts $fout "is changed in the background while the graph is being viewed."
#    puts $fout "Other than these known errors, please report bugs in the usual way"
#    puts $fout "(website or mail form to gviz-bugs). If you're impatient,"
#    puts $fout "you can always try installing Graphviz via Macports.<p>"
    puts $fout ""
    puts $fout "<tbody>"
    puts $fout "<tr>"
    puts $fout "<th align=\"left\"><font size=\"+1\">$package</font></th>"
    foreach {releasename releasedir} $releases {
    	puts $fout "<th><font size=\"-1\">$releasename</font></th>"
    }
    puts $fout "</tr>"
    puts $fout "</tbody>"
    foreach {platform directory types comment} $platform_directory_type_comments {
	if {[lsearch $platforms $platform] == -1} continue
        set pkg $package
        puts $fout "<tbody>"
        puts $fout "<tr><th align=\"right\"><font size=\"-1\">$platform</font></th>"
        foreach {releasename releasedir} $releases {
            puts $fout "<td align=\"left\"><font size=\"-1\">"
            foreach type $types {
                puts_latest $fout $docroot $releasedir/$directory $pkg $package_exclude $type
            }
            puts $fout "</font></td>"
        }
        puts $fout "</tr>"
        puts $fout "</tbody>"
    }
    puts $fout "<tbody>"
    puts $fout "<tr><td colspan=\"[expr {1 + ([llength $releases] / 2)}]\">&nbsp;</td></tr>"
    puts $fout "</tbody>"
}

puts $fout "</table>"

close $fout
