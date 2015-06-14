#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release<br>" pub/graphviz/stable
    "development snapshot<br>(If red, then they are more than 36 hours old<br>and we have a problem with the latest snapshot.)" pub/graphviz/development
}

set packages_platforms {
    graphviz {SRPMS EL5.i386 EL5.x86_64 EL6.i386 EL6.x86_64 EL7.i386 EL7.x86_64}
    webdot {SRPMS EL5.i386 EL5.x86_64 EL6.i386 EL6.x86_64 EL7.i386 EL7.x86_64}
    gts {SRPMS EL5.i386 EL5.x86_64 EL6.i386 EL6.x86_64 EL7.i386 EL7.x86_64}
    gtkglext {SRPMS EL5.i386 EL5.x86_64 EL7.i386 EL7.x86_64}
    gtkglarea2 {SRPMS EL5.i386 EL5.x86_64}
    ann {SRPMS EL7.i386 EL7.x86_64}
}

set platform_directory_type_comments {
    SRPMS SRPMS {src.rpm fc14.src.rpm fc9.src.rpm fc18.src.rpm} ""
    EL7.i386 redhat/el7/i386/os {el7.i386.rpm el7.noarch.rpm} "Enterprise Linux 7"
    EL7.x86_64 redhat/el7/x86_64/os {el7.x86_64.rpm el7.noarch.rpm} "Enterprise Linux 7"
    EL6.i386 redhat/el6/i386/os {el6.i686.rpm el6.noarch.rpm} "Enterprise Linux 6"
    EL6.x86_64 redhat/el6/x86_64/os {el6.x86_64.rpm el6.noarch.rpm} "Enterprise Linux 6"
    EL5.i386 redhat/el5/i386/os {el5.i386.rpm el5.noarch.rpm} "Enterprise Linux 5"
    EL5.x86_64 redhat/el5/x86_64/os {el5.x86_64.rpm el5.noarch.rpm} "Enterprise Linux 5"
}                     

set package_exclude {
    graphviz-cairo-*
    graphviz-perl-2.1[0-9]*.el\[345\].*
    graphviz-perl-2.2[0-7]*.el\[345\].*
    graphviz-php-*.el\[345\].*
    graphviz-php-*.fc4.*
    graphviz-php-*
    graphviz-perl-*
    graphviz-ruby-*
    graphviz-tcl-*
    graphviz-R-*
    graphviz-ocaml-*
    graphviz-python-*
    graphviz-sharp-*
    graphviz-io-*
    graphviz-lua-*
    graphviz-java-*
    graphviz-guile-*
    graphviz-doc-*el6.i686*
    graphviz-doc-*el6.x86_64*
    graphviz-graphs-*el6.i686*
    graphviz-graphs-*el6.x86_64*
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
<!-- Do not remove this comment or make any web server edits above this comment -->
            <h4>Yum Repository</h4>
            The easiest way to install and maintain graphviz on RHEL or CentOS is to use <code>yum</code>. To set up yum, download the <a href="graphviz-rhel.repo">graphviz-rhel.repo</a> file and save it (as root) in <code>/etc/yum.repos.d/</code>
<br>Then you can (as root) type:<br>
            <pre>
        yum list available 'graphviz*'
        yum install 'graphviz*'
</pre>
<!-- Do not remove this comment or make any web server edits below this comment -->
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

puts $fout "<p>For el7, the extra sources were obtained from:
<a href=\"https://dl.fedoraproject.org/pub/epel/7/SRPMS/a/ann-1.1.2-3.el7.src.rpm\">ann</a>,
<a href=\"https://dl.fedoraproject.org/pub/epel/7/SRPMS/g/gtkglarea2-2.0.1-6.el7.src.rpm\">gtkglarea2</a>,
<a href=\"https://dl.fedoraproject.org/pub/epel/7/SRPMS/p/pangox-compat-0.0.2-2.el7.src.rpm\">pangox-compat</a>,
<a href=\"https://kojipkgs.fedoraproject.org//packages/gts/0.7.6/21.20111025.fc18/src/gts-0.7.6-21.20111025.fc18.src.rpm\">gts</a>,
< href=\"https://kojipkgs.fedoraproject.org//packages/gtkglext/1.2.0/18.fc18/src/gtkglext-1.2.0-18.fc18.src.rpm\">gtkglext</a>.
and rebuilt with:
<br>
<i>rpmbuild --rebuild --define \"dist .el7\" ann-1.1.2-3.el7.src.rpm</i>
<br>
<i>rpmbuild --rebuild --define \"dist .el7\" gtkglarea2-2.0.1-6.el7.src.rpm</i>
<br>
<i>rpmbuild --rebuild --define \"dist .el7\" pangox-compat-0.0.2-2.el7.src.rpm</i>
<br>
<i>rpmbuild --rebuild --define \"dist .el7\" gts-0.7.6-21.20111025.fc18.src.rpm</i>
<br>
<i>rpmbuild --rebuild --define \"dist .el7\" gtkglext-1.2.0-18.fc18.src.rpm</i>

<p>For el6, the extra sources were obtained from:
<a href=\"https://kojipkgs.fedoraproject.org//packages/gts/0.7.6/14.fc14/src/gts-0.7.6-14.fc14.src.rpm\">gts</a>,
and rebuilt with:
<br>
<i>rpmbuild --rebuild --define \"dist .el6\" gts-0.7.6-14.fc14.src.rpm</i>
<b>
The gtkglext packages are provided by the base repo, and the gtkglarea2 packages are provided by the EPEL repo.

<p>For el5, the extra sources were obtained from:
<a href=\"http://archives.fedoraproject.org/pub/archive/fedora/linux/updates/9/SRPMS.newkey/gts-0.7.6-11.fc9.src.rpm\">gts</a>,
<a href=\"http://archives.fedoraproject.org/pub/archive/fedora/linux/releases/9/Everything/source/SRPMS/gtkglext-1.2.0-6.fc9.src.rpm\">gtkglext</a>,
and rebuilt with:
<br>
<i>rpmbuild --rebuild --define \"dist .el5\" gts-0.7.6-11.fc9.src.rpm</i>
<br>
<i>rpmbuild --rebuild --define \"dist .el5\" --define \"fedora 8\" gtkglext-1.2.0-6.fc9.src.rpm</i>
(The \"fedora 8\" define is a hack to cause the spec to omit .la targets from the package.)"

close $fout
