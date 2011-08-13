#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release<br>" pub/graphviz/stable
    "development snapshot<br>(If red, then they are more than 36 hours old<br>and we have a problem with the latest snapshot.)" pub/graphviz/development
}

set packages_platforms {
    graphviz {SRPMS EL6.i386 EL6.x86_64  EL5.i386 EL5.x86_64 EL4.i386 EL4.x86_64}
    webdot {SRPMS EL6.i386 EL6.x86_64  EL5.i386 EL5.x86_64 EL4.i386 EL4.x86_64}
    gts {SRPMS EL6.i386 EL6.x86_64 EL5.i386 EL5.x86_64}
    gtkglext {SRPMS EL5.i386 EL5.x86_64}
    gtkglarea2 {SRPMS EL6.i386 EL6.x86_64 EL5.i386 EL5.x86_64}
}

set platform_directory_type_comments {
    SRPMS SRPMS {src.rpm fc14.src.rpm fc9.src.rpm} ""
    EL6.i386 redhat/el6/i386/os {el6.i686.rpm el6.noarch.rpm} "Enterprise Linux 6 or later - uses fontconfig"
    EL6.x86_64 redhat/el6/x86_64/os {el6.x86_64.rpm el6.noarch.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL5.i386 redhat/el5/i386/os {el5.i386.rpm el5.noarch.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL5.x86_64 redhat/el5/x86_64/os {el5.x86_64.rpm el5.noarch.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL4.i386 redhat/el4/i386/os {el4.i386.rpm el4.noarch.rpm} "Enterprise Linux 4 or later - uses fontconfig"
    EL4.x86_64 redhat/el4/x86_64/os {el4.x86_64.rpm el4.noarch.rpm} "Enterprise Linux 4 or later - uses fontconfig"
    EL3.i386 redhat/el3/i386/os {el3.i386.rpm el3.noarch.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    EL3.x86_64 redhat/el3/x86_64/os {el3.x86_64.rpm el3.noarch.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    EL3.ia64 redhat/el3/ia64/os {el3.ia64.rpm el3.noarch.rpm} "Enterprise Linux 3 or later - uses fontconfig"
}                     

set package_exclude {
    graphviz-cairo-*
    graphviz-perl-2.1[0-9]*.el\[345\].*
    graphviz-perl-2.2[0-7]*.el\[345\].*
    graphviz-php-*.el\[345\].*
    graphviz-php-*.fc4.*
}

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
    set regexp {([a-zA-Z0-9]*[-a-z]*)([-0-9.]*)([a-z][.a-z0-9_]*)}
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
            incr exclude_this [string match $excl $fn]
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
        foreach {fnv} [lsort -dictionary -index 0 $FILES($type)] {
            foreach {fn color} [checkdate $fnv] {break}
	    if {[string first debuginfo $fn] == -1 && [string first rtest $fn] == -1} {
                puts $fout "<a href=\"/$dir/$fn\"><font color=\"$color\">$fn</font></a><br>"
	    }
	
        }
        foreach {fnv} [lsort -dictionary -index 0 $FILES($type)] {
            foreach {fn color} [checkdate $fnv] {break}
	    if {[string first debuginfo $fn] != -1 || [string first rtest $fn] != -1} {
                puts $fout "&nbsp;&nbsp;<a href=\"/$dir/$fn\"><font color=\"$color\" size=\"-2\">$fn</font></a><br>"
	    }
        }
    }
}

set fout [open Download_linux_rhel.ht w]

#Place any web server edits after the line containing cut1 and before the line containing cut2
puts $fout {
<!-- cut1 -->
<!-- cut2 -->
}

puts $fout "<table frame=\"void\" rules=\"groups\" border=\"1\" width=\"100%\">"
for {set i 0} {$i <= [llength $releases] / 2} {incr i} {
    puts $fout "<colgroup><col></colgroup>"
}

foreach {package platforms} $packages_platforms {
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
        puts $fout "<tbody>"
        puts $fout "<tr><th align=\"right\"><font size=\"-1\">$platform</font></th>"
        foreach {releasename releasedir} $releases {
            puts $fout "<td align=\"left\" nowrap><font size=\"-1\">"
            foreach type $types {
                puts_latest $fout $docroot $releasedir/$directory $package $package_exclude $type
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
puts $fout "<p>The gts sources were obtained <a href=\"http://archives.fedoraproject.org/pub/archive/fedora/linux/updates/9/SRPMS.newkey/gts-0.7.6-11.fc9.src.rpm\">from here</a> and built with:<br><i>rpmbuild --rebuild --define \"dist .el5\" gts-0.7.6-11.fc9.src.rpm</i>  (fc14 sources were used for el6)"
puts $fout "<p>The gtkglarea2 sources were obtained <a href=\"http://archives.fedoraproject.org/pub/archive/fedora/linux/releases/9/Everything/source/SRPMS/gtkglarea2-1.99.0-8.fc9.src.rpm\">from here</a> and built with:<br><i>rpmbuild --rebuild --define \"dist .el5\" gtkglarea2-1.99.0-8.fc9.src.rpm</i>"
puts $fout "<p>The gtkglext sources were obtained <a href=\"http://archives.fedoraproject.org/pub/archive/fedora/linux/releases/9/Everything/source/SRPMS/gtkglext-1.2.0-6.fc9.src.rpm\">from here</a> and built with:<br><i>rpmbuild --rebuild --define \"dist .el5\" --define \"fedora 8\" gtkglext-1.2.0-6.fc9.src.rpm</i>"
puts $fout "<br>(The \"fedora 8\" define is a hack to cause the spec to omit .la targets from the package.)"
	
close $fout
