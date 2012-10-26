#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release" pub/graphviz/stable
    "development snapshot" pub/graphviz/development
}

set packages {
    graphviz
}

set package_exclude {
    graphviz-cairo-
    graphviz-win-
}

set platforms {
    "Windows" windows {msi zip} "Microsoft Windows"
}

#    Sources SOURCES {tar.gz} ""

set time_cutoff [expr {[clock seconds] - 36*60*60}]
proc checkdate {fnv} {
    global time_cutoff
    set color blue
    foreach {fn v} $fnv {break}
    set lst [split $v {-.}]
    if {[llength $lst] >= 5} {
#        foreach {. . dt tm td .} $lst {break}
#        set time_stamp [clock scan "00:00:00 [string range $dt 0 3]-${tm}-${td}" -gmt 1]
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

set fout [open Download_windows.ht w]

#Place any web server edits after the line containing cut1 and before the line containing cut2
puts $fout {
<!-- cut1 -->
<!-- Do not remove this comment or make any web server edits above this comment -->
<b>Warning:</b> We received an isolated report of a problem said to be caused by installing Graphviz on Windows7.
It was reported that Graphviz wiped out the system PATH variable. Since thousands of people did not encounter this,
we're not sure what's wrong. Our advice is (1) make sure to create a checkpoint or backup, especially if there is anything
different about your Administrator account, the location of the installation directory, etc. (2) not to overreact, since
this was a bug we saw several years ago, and we thought we had corrected it. (3) Possibly an old package was installed
inadvertently.  The installer basically just unzips the executables, and sets the PATH to include this -- nothing fancy. 
<b>If you encounter this problem, please contact gviz-bugs.</b>
<p>

<b>Note</b>: As of version 2.26, the Visual
Studio packages provide both the Release and Debug versions of the
libraries.
<p>
<b>Warning for Vista users</b>: Even if you are logged in as
adminstrator, double-clicking on the MSI file or running the MSI file
from a command prompt may still not may not provide sufficient
privileges. You have to run
<p>
<PRE>
  <tt>msiexec /a graphviz-x.xx.msi</tt>
</PRE>
<p>
from a command prompt.
<!-- Do not remove this comment or make any web server edits below this comment -->
<!-- cut2 -->
}

puts $fout "<P>"

puts $fout "<table frame=\"void\" rules=\"groups\" border=\"1\" width=\"100%\">"
for {set i 0} {$i <= [llength $releases] / 2} {incr i} {
    puts $fout "<colgroup><col></colgroup>"
}

foreach package $packages {
    puts $fout "<tbody>"
    puts $fout "<tr>"
    puts $fout "<th align=\"left\"><font size=\"+1\">$package</font></th>"
    foreach {releasename releasedir} $releases {
    	puts $fout "<th><font size=\"-1\">$releasename</font></th>"
    }
    puts $fout "</tr>"
    puts $fout "</tbody>"
    foreach {platform directory types comment} $platforms {
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
puts $fout {
<p>
If you encounter problems running or building the Windows version,
submit a <A HREF="http://www.graphviz.org/bugs/bugform.html">bug report</A>
or contact <a href="mailto:arif@research.att.com">Arif Bilgin</a>.
}
close $fout
