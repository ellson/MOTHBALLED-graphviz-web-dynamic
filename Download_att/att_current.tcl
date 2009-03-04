#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release<br>" /data/att_pub/graphviz/stable
    "development snapshot<br>(If red, then they are more than 36 hours old<br>and we have a problem with the latest snapshot.)" /data/att_pub/graphviz/development
}

set packages_platforms {
    graphviz {SRPMS FC10.i386 FC10.x86_64 FC9.i386 FC9.x86_64 FC8.i386 FC8.x86_64 FC7.i386 FC7.x86_64 EL5.i386 EL5.x86_64 EL4.i386 EL4.x86_64 UB8.i386}
}
set platform_directory_type_comments {
    SRPMS SRPMS {src.rpm} ""
    FC10.i386 redhat/fc10/i386/os {fc10.i386.rpm fc10.noarch.rpm} "Fedora 10 (Rawhide) or later"
    FC10.x86_64 redhat/fc10/x86_64/os {fc10.x86_64.rpm fc10.noarch.rpm} "Fedora 10 (Rawhide) or later"
    FC9.i386 redhat/fc9/i386/os {fc9.i386.rpm fc9.noarch.rpm} "Fedora 9"
    FC9.x86_64 redhat/fc9/x86_64/os {fc9.x86_64.rpm fc9.noarch.rpm} "Fedora 9"
    FC8.i386 redhat/fc8/i386/os {fc8.i386.rpm fc8.noarch.rpm} "Fedora 8"
    FC8.x86_64 redhat/fc8/x86_64/os {fc8.x86_64.rpm fc8.noarch.rpm} "Fedora 8"
    FC7.i386 redhat/fc7/i386/os {fc7.i386.rpm fc7.noarch.rpm} "Fedora 7"
    FC7.x86_64 redhat/fc7/x86_64/os {fc7.x86_64.rpm fc7.noarch.rpm} "Fedora 7"
    EL5.i386 redhat/el5/i386/os {el5.i386.rpm el5.noarch.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL5.x86_64 redhat/el5/x86_64/os {el5.x86_64.rpm el5.noarch.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL4.i386 redhat/el4/i386/os {el4.i386.rpm el5.noarch.rpm} "Enterprise Linux 4 or later - uses fontconfig"
    EL4.x86_64 redhat/el4/x86_64/os {el4.x86_64.rpm el4.noarch.rpm} "Enterprise Linux 4 or later - uses fontconfig"
    EL3.i386 redhat/el3/i386/os {el3.i386.rpm el3.noarch.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    EL3.x86_64 redhat/el3/x86_64/os {el3.x86_64.rpm el3.noarch.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    EL3.ia64 redhat/el3/ia64/os {el3.ia64.rpm el3.noarch.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    UB8.i386 ubuntu/ub8/i386 {i386.deb all.deb} "Ubuntu 2 (hardy)"
}

set package_exclude {
    graphviz-cairo-*
    graphviz-perl-*.rhl\[789\].*
    graphviz-perl-*.el3.*
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
	if {! [string equal $dt att] && ! [string equal $tm att]} {
            set time_stamp [clock scan [string range $dt 2 end]T${tm}00 -gmt 1]
            if {$time_stamp < $time_cutoff} {
	        set color red
            }
        }
    }
    return [list $fn $color]
}
                                                                                
proc puts_latest {fout docroot dir package package_exclude type} {
    set regexp1 {([-a-zA-Z]*)([-0-9.at]*)([a-z][.a-z0-9_]*)}
    set regexp2 {([-a-zA-Z0-9]*)_([-0-9.at]*)_([a-z][.a-z0-9_]*)}
    if {![file exists $docroot/$dir]} {
        puts $fout "<font color=\"red\">Directory \"$docroot/$dir/\" was not found.</font>"
        return
    }
    set owd [pwd]
    cd $docroot/$dir
    foreach {fn n v t} [concat \
		[regexp -all -inline $regexp1 [glob -nocomplain *]] \
		[regexp -all -inline $regexp2 [glob -nocomplain *]]] {
        if {[file isdir $fn]} {continue}
        set exclude_this 0
        foreach {excl} $package_exclude {
            incr exclude_this [string match $excl $fn]
        }
        if {$exclude_this} {continue}
#        if {[string first $package $fn] == 0} {
            lappend PACKAGE([list $n $t]) [list $fn $v]
#        }
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
#                puts $fout "<a href=\"/$dir/$fn\"><font color=\"$color\">$fn</font></a><br>"
                puts $fout "<font color=\"$color\">$fn</font><br>"
	    }
	
        }
        foreach {fnv} [lsort -dictionary -index 0 $FILES($type)] {
            foreach {fn color} [checkdate $fnv] {break}
	    if {[string first debuginfo $fn] != -1 || [string first rtest $fn] != -1} {
#                puts $fout "&nbsp;&nbsp;<a href=\"/$dir/$fn\"><font color=\"$color\" size=\"-2\">$fn</font></a><br>"
                puts $fout "&nbsp;&nbsp;<font color=\"$color\" size=\"-2\">$fn</font><br>"
	    }
        }
    }
}

set fout [open Download_att.ht w]

#puts $fout {
#<p><b>RH73</b> binaries should run on any later system.
#The primary difference is that the <b>Fedora</b> binaries use <i>fontconfig</i>.
#<p>
#}

puts $fout {
<h4>Organization of Binary packages for Linux</h4>
<font size="-1">
<dl>
<dt><i>graphviz</i>
<dd>The base package providing /usr/bin/dot, /usr/bin/neato, etc.
<dt><i>graphviz-doc, graphviz-graphs</i>
<dd>Optional user documentation and examples.
<dt><i>graphviz-devel, graphviz-debuginfo, graphviz-rtest</i>
<dd>Optional for developers: headers, debugging symbols, regression test scripts and data.
<dt><i>graphviz-gd, graphviz-devil, graphviz_gdk_pixbuf, graphviz-ming</i>
<dd>Optional renderers.
<!--
<dt><i>graphviz-cairo</i>
<dd>Superceded by pango/cairo support in the base <i>graphviz</i> package in FC5 and later.
-->
<dt><i>graphviz-guile, graphviz-java, graphviz-lua, graphviz-ocaml, graphviz-perl, graphviz-php, graphviz-python, graphviz-R, graphviz-ruby, graphviz-sharp, graphviz-tcl</i>
<dd>Optional language bindings to enable programs in those languages to use the facilities of graphviz.
<dt><i>webdot</i>
<dd>Optional cgi-bin graph server.  Requires <i>graphviz</i> and <i>graphviz-tcl</i>.
</dl>
</font>
<p>
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
            puts $fout "<td align=\"left\"><font size=\"-1\">"
            foreach type $types {
                puts_latest $fout / $releasedir/$directory $package $package_exclude $type
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
