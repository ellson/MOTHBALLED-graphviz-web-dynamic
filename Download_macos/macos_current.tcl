#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release" pub/graphviz/stable
    "development snapshot" pub/graphviz/development
}

set packages_platforms {
    graphviz {mountainlion lion snowleopard leopard}
}

set package_exclude {
    graphviz-cairo-
    graphviz-win-
}

set platform_directory_type_comments {
    mountainlion macos/mountainlion {pkg} "MacOS 10.8 (Mountain Lion)"
    lion macos/lion {pkg} "MacOS 10.7 (Lion)"
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
#        puts $fout "<font color=\"red\">Directory \"$docroot/$dir/\" was not found.</font>"
        puts $fout "<font color=\"red\">Not Available</font>"

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

#Place any web server edits after the line containing cut1 and before the line containing cut2
puts $fout {
<!-- cut1 -->
<!-- Do not remove this comment or make any web server edits above this comment -->
<b>General</b>: this package is for general use. It has Graphviz.app and the main command line tools.  It doesn't include gvedit.app (a QT-based graph editor), smyrna (an OpenGL viewer for large graphs), or the pangocairo plugin (you get the quartz plugin instead). If you need any of these, build from the <a href="http://www.graphviz.org/pub/graphviz/CURRENT/graphviz-working.tar.gz">source tarball</a> or <a href="http://www.macports.org/">macports</a> <a href="http://www.macports.org/ports.php?by=name&substr=graphviz">graphviz</a>. If you can work on fixing the build and packaging problems with these tools, send mail to gviz-bugs on research.att.com. (Note: smyrna crashes Xquartz 2.6.1 on some systems; update to at least <a href="http://xquartz.macosforge.org/trac/wiki/Releases">2.6.2</a>.)
<p>For older versions of Graphviz for Mac OSX, look <a href="http://www.graphviz.org/pub/graphviz/stable/macos/">here</a>.
<p>If you encounter problems with old PPC or early Intel Macs, you'll probably have to build from source using 
<a href="http://mxcl.github.com/homebrew/">homebrew</a> or <a href="http://www.macports.org/">macports</a>.
Some notes: 1) graphviz-gui (Graphviz.app) is a separate package in macports, and seems to be optional in homebrew. 2) Beware, if you do not already have packages like cairopango, ghostscript, and the GNU/X11 libraries needed to support gtk2, then it can take a long time, maybe hours, to build the default package with all the drivers.  We rely on cairopango to size and render internationalized text, so there really is no royal road, though you can still build graphviz with a less expansive set of drivers that rely on libgd, freetype and fontconfig. Here's some good news: according to <A HREF="https://github.com/mxcl/homebrew/wiki/Installation">this</A> page, there's a tar file you can download and install to get the command line build tools, to skip all the XCode glop.
<p><b>Note</b>: 2.28 is the last binary package provided for the Leopard version of OSX. If you need a version later than that, you will need to build it from
source or use something like macports.
<!-- Do not remove this comment or make any web server edits below this comment -->
<!-- cut2 -->
}

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
            puts $fout "<td align=\"left\" nowrap><font size=\"-1\">"
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
