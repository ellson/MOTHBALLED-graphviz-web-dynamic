#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release" pub/graphviz/ARCHIVE
    "development snapshot" pub/graphviz/CURRENT
}

set packages {
    graphviz
}

set package_exclude {
    graphviz-cairo-
    graphviz-win-
}

set platforms {
    Sources {tar.gz} ""
    Windows {exe bin.tar.gz static.exe static.bin.tar.gz} "Microsoft Windows"
    "Windows (experimental)" {msi} "Microsoft Windows (experimental)"
}
                                                                                
proc puts_latest {fout docroot dir package package_exclude type} {
    set regexp {([-a-z]*)(-[0-9][-0-9.]*)([a-z][.a-z0-9]*)}
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
      set fnv [lindex [lsort -decreasing -dictionary -index 1 $PACKAGE($nt)] 0]
      foreach {fn v} $fnv {break}
      lappend FILES($t) $fn
    }
    cd $owd
    if {[info exists FILES($type)]} {
        foreach fn [lsort $FILES($type)] {
            puts $fout "<a href=\"/$dir/$fn\">$fn</a><br>"
        }
    }
}

set fout [open Download_windows.ht w]

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
    foreach {platform types comment} $platforms {
        set pkg $package
        puts $fout "<tbody>"
        puts $fout "<tr><th align=\"right\"><font size=\"-1\">$platform</font></th>"
        foreach {releasename releasedir} $releases {
            puts $fout "<td align=\"left\"><font size=\"-1\">"
            foreach type $types {
                puts_latest $fout $docroot $releasedir $pkg $package_exclude $type
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

puts $fout "<p>Note for Windows users:\n\
<p>The .msi packages contain different code and are EXPERIMENTAL. In particular these do not yet\n\
include fontconfig and cairopango and the gdiplus renderer drawings are not yet correct. The minimum system\n\
requirement is for Windows XP or Windows 2003 Server.\n\
<p>Some Windows operating systems may\n\
require run-time components of Visual C++ libraries to properly run \n\
Graphviz executables. We are still working on this issue.  Meanwhile, \n\
if you get error messages like:\n\
<P>\n\
\"The application has failed to start because the application configuration\n\
is incorrect. Reinstalling the application may fix the problem.\"\n\
<P>\n\
or\n\
<P>\n\
\"The application has failed to start because somefilename.dll was not found.\n\
Re-installing the application may fix this problem.\"\n\
<P>\n\
please click this <A HREF=http://www.microsoft.com/downloads/details.aspx?familyid=32bc1bee-a3f9-4c13-9c99-220b62a191ee&displaylang=en>link</A>\n\
and install Microsoft Visual C++ 2005 Redistributable Package (x86).\n"
close $fout
