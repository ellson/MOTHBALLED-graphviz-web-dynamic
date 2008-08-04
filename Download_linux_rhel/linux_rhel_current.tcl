#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release<br>" pub/graphviz/ARCHIVE
    "development snapshot<br>(If red, then they are more than 36 hours old<br>and we have a problem with the latest snapshot.)" pub/graphviz/CURRENT
}

set packages_platforms {
    graphviz {Sources EL5.i386 EL5.x86_64 EL4.i386 EL4.x86_64 EL3.i386 EL3.x86_64 EL3.ia64}
    webdot {Sources Noarch}
}

# Separated out
# FC10.i386 FC10.x86_64 FC9.i386 FC9.x86_64 FC8.i386 FC8.x86_64 FC7.i386 FC7.x86_64
# Just too old to support any more!
# FC6.i386 FC6.x86_64 FC5.i386 FC5.x86_64 FC4.i386 FC4.x86_64

# Just too old and broken to support any more!
# RHL9.i386 RHL8.i386 RHL7.i386

set platform_type_comments {
    Sources {src.rpm} ""
    FC10.i386 {fc10.i386.rpm} "Fedora 10 (Rawhide) or later"
    FC10.x86_64 {fc10.x86_64.rpm} "Fedora 10 (Rawhide) or later"
    FC9.i386 {fc9.i386.rpm} "Fedora 9"
    FC9.x86_64 {fc9.x86_64.rpm} "Fedora 9"
    FC8.i386 {fc8.i386.rpm} "Fedora 8"
    FC8.x86_64 {fc8.x86_64.rpm} "Fedora 8"
    FC7.i386 {fc7.i386.rpm} "Fedora 7"
    FC7.x86_64 {fc7.x86_64.rpm} "Fedora 7"
    FC6.i386 {fc6.i386.rpm} "Fedora-Core 6 - uses pango,cairo"
    FC6.x86_64 {fc6.x86_64.rpm} "Fedora-Core 6 - uses pango,cairo"
    FC5.i386 {fc5.i386.rpm} "Fedora-Core 5- uses gcc4 and fontconfig"
    FC5.x86_64 {fc5.x86_64.rpm} "Fedora-Core 5 - uses gcc4 and fontconfig"
    FC4.i386 {fc4.i386.rpm} "Fedora-Core 4 - uses gcc4 and fontconfig"
    FC4.x86_64 {fc4.x86_64.rpm} "Fedora-Core 4 - uses gcc4 and fontconfig"
    EL5.i386 {el5.i386.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL5.x86_64 {el5.x86_64.rpm} "Enterprise Linux 5 or later - uses fontconfig"
    EL4.i386 {el4.i386.rpm} "Enterprise Linux 4 or later - uses fontconfig"
    EL4.x86_64 {el4.x86_64.rpm} "Enterprise Linux 4 or later - uses fontconfig"
    EL3.i386 {el3.i386.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    EL3.x86_64 {el3.x86_64.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    EL3.ia64 {el3.ia64.rpm} "Enterprise Linux 3 or later - uses fontconfig"
    Noarch {noarch.rpm} ""
}
# Just too old and broken to support anymore!
#    RHL9.i386 {rhl9.i386.rpm} "Redhat 9 or later - does not use fontconfig"
#    RHL8.i386 {rhl8.i386.rpm} "Redhat 8 or later - does not use fontconfig"
#    RHL7.i386 {rhl7.i386.rpm} "Redhat 7 or later - does not use fontconfig"

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
        set time_stamp [clock scan [string range $dt 2 end]T${tm}00 -gmt 1]
        if {$time_stamp < $time_cutoff} {
	    set color red
        }
    }
    return [list $fn $color]
}
                                                                                
proc puts_latest {fout docroot dir package package_exclude type} {
    set regexp {([-a-zA-Z]*)([-0-9.]*)([a-z][.a-z0-9_]*)}
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

#puts $fout {
#<p><b>RH73</b> binaries should run on any later system.
#The primary difference is that the <b>Fedora</b> binaries use <i>fontconfig</i>.
#<p>
#}

puts $fout {
<h4>Organization of Binary packages for RHEL or Centos Linux</h4>
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
    foreach {platform types comment} $platform_type_comments {
	if {[lsearch $platforms $platform] == -1} continue
        puts $fout "<tbody>"
        puts $fout "<tr><th align=\"right\"><font size=\"-1\">$platform</font></th>"
        foreach {releasename releasedir} $releases {
            puts $fout "<td align=\"left\"><font size=\"-1\">"
            foreach type $types {
                puts_latest $fout $docroot $releasedir $package $package_exclude $type
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
