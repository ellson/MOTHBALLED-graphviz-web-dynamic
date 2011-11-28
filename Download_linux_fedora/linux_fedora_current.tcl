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
	
close $fout
<!-- Do not remove this comment or make any web server edits above this comment -->
            <h4>Yum Repository</h4>
            The easiest way to install and maintain graphviz on Fedora is to use <code>yum</code>. To set up yum, download the <a href="graphviz-fedora.repo">graphviz-fedora.repo</a> file and save it (as root) in <code>/etc/yum.repos.d/</code>
            <p>Then you can (as root) type:</p>
            <p>&nbsp;</p>
            <pre>
	yum list available 'graphviz*'
	yum install 'graphviz*'
</pre>
            <p>Caution: Our snapshot builds are generated automatically every day from CVS. The new snapshot rpms don't necessarily contain any changes, other than datestamps. Also, it sometimes happens that changes we are making will compile OK but will break things. Instead of enabling graphviz-snapshot for automatic updates, we recommend that you only manually update to a snapshot if you have reason to believe that it fixes a particular problem you are seeing. To manually update to a snapshot release, use the command:</p>
            <p>&nbsp;</p>
            <pre>
	yum --enablerepo=graphviz-snapshot update 'graphviz*'
</pre>
            <p>&nbsp;</p>
            <h4>Organization of Binary packages for Fedora Linux</h4>
            <font size="-1"> </font>
            <dl>
                <dt><font size="-1"><i>graphviz</i> </font></dt>
                <dd><font size="-1">The base package providing /usr/bin/dot, /usr/bin/neato, etc. </font></dd>
                <dt><font size="-1"><i>graphviz-doc, graphviz-graphs</i> </font></dt>
                <dd><font size="-1">Optional user documentation and examples. </font></dd>
                <dt><font size="-1"><i>graphviz-devel, graphviz-debuginfo, graphviz-rtest</i> </font></dt>
                <dd><font size="-1">Optional for developers: headers, debugging symbols, regression test scripts and data. </font></dd>
                <dt><font size="-1"><i>graphviz-gd, graphviz-devil, graphviz_gdk_pixbuf, graphviz-ming</i> </font></dt>
                <dd><font size="-1">Optional renderers. <!--
<dt><i>graphviz-cairo</i>
<dd>Superceded by pango/cairo support in the base <i>graphviz</i> package in FC5 and later.
--> </font></dd>
                <dt><font size="-1"><i>graphviz-guile, graphviz-java, graphviz-lua, graphviz-ocaml, graphviz-perl, graphviz-php, graphviz-python, graphviz-R, graphviz-ruby, graphviz-sharp, graphviz-tcl</i> </font></dt>
                <dd><font size="-1">Optional language bindings to enable programs in those languages to use the facilities of graphviz. </font></dd>
                <dt><font size="-1"><i>webdot</i> </font></dt>
                <dd><font size="-1">Optional cgi-bin graph server.  Requires <i>graphviz</i> and <i>graphviz-tcl</i>. </font></dd>
            </dl>
            <p>&nbsp;</p>
<!-- Do not remove this comment or make any web server edits below this comment -->
<!-- Do not remove this comment or make any web server edits above this comment -->
            <h4>Yum Repository</h4>
            The easiest way to install and maintain graphviz on Fedora is to use <code>yum</code>. To set up yum, download the <a href="graphviz-fedora.repo">graphviz-fedora.repo</a> file and save it (as root) in <code>/etc/yum.repos.d/</code>
            <p>Then you can (as root) type:</p>
            <p>&nbsp;</p>
            <pre>
	yum list available 'graphviz*'
	yum install 'graphviz*'
</pre>
            <p>Caution: Our snapshot builds are generated automatically every day from CVS. The new snapshot rpms don't necessarily contain any changes, other than datestamps. Also, it sometimes happens that changes we are making will compile OK but will break things. Instead of enabling graphviz-snapshot for automatic updates, we recommend that you only manually update to a snapshot if you have reason to believe that it fixes a particular problem you are seeing. To manually update to a snapshot release, use the command:</p>
            <p>&nbsp;</p>
            <pre>
	yum --enablerepo=graphviz-snapshot update 'graphviz*'
</pre>
            <p>&nbsp;</p>
            <h4>Organization of Binary packages for Fedora Linux</h4>
            <font size="-1"> </font>
            <dl>
                <dt><font size="-1"><i>graphviz</i> </font></dt>
                <dd><font size="-1">The base package providing /usr/bin/dot, /usr/bin/neato, etc. </font></dd>
                <dt><font size="-1"><i>graphviz-doc, graphviz-graphs</i> </font></dt>
                <dd><font size="-1">Optional user documentation and examples. </font></dd>
                <dt><font size="-1"><i>graphviz-devel, graphviz-debuginfo, graphviz-rtest</i> </font></dt>
                <dd><font size="-1">Optional for developers: headers, debugging symbols, regression test scripts and data. </font></dd>
                <dt><font size="-1"><i>graphviz-gd, graphviz-devil, graphviz_gdk_pixbuf, graphviz-ming</i> </font></dt>
                <dd><font size="-1">Optional renderers. <!--
<dt><i>graphviz-cairo</i>
<dd>Superceded by pango/cairo support in the base <i>graphviz</i> package in FC5 and later.
--> </font></dd>
                <dt><font size="-1"><i>graphviz-guile, graphviz-java, graphviz-lua, graphviz-ocaml, graphviz-perl, graphviz-php, graphviz-python, graphviz-R, graphviz-ruby, graphviz-sharp, graphviz-tcl</i> </font></dt>
                <dd><font size="-1">Optional language bindings to enable programs in those languages to use the facilities of graphviz. </font></dd>
                <dt><font size="-1"><i>webdot</i> </font></dt>
                <dd><font size="-1">Optional cgi-bin graph server.  Requires <i>graphviz</i> and <i>graphviz-tcl</i>. </font></dd>
            </dl>
            <p>&nbsp;</p>
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
	
close $fout
<!-- Do not remove this comment or make any web server edits above this comment -->
            <h4>Yum Repository</h4>
            The easiest way to install and maintain graphviz on Fedora is to use <code>yum</code>. To set up yum, download the <a href="graphviz-fedora.repo">graphviz-fedora.repo</a> file and save it (as root) in <code>/etc/yum.repos.d/</code>
            <p>Then you can (as root) type:</p>
            <p>&nbsp;</p>
            <pre>
	yum list available 'graphviz*'
	yum install 'graphviz*'
</pre>
            <p>Caution: Our snapshot builds are generated automatically every day from CVS. The new snapshot rpms don't necessarily contain any changes, other than datestamps. Also, it sometimes happens that changes we are making will compile OK but will break things. Instead of enabling graphviz-snapshot for automatic updates, we recommend that you only manually update to a snapshot if you have reason to believe that it fixes a particular problem you are seeing. To manually update to a snapshot release, use the command:</p>
            <p>&nbsp;</p>
            <pre>
	yum --enablerepo=graphviz-snapshot update 'graphviz*'
</pre>
            <p>&nbsp;</p>
            <h4>Organization of Binary packages for Fedora Linux</h4>
            <font size="-1"> </font>
            <dl>
                <dt><font size="-1"><i>graphviz</i> </font></dt>
                <dd><font size="-1">The base package providing /usr/bin/dot, /usr/bin/neato, etc. </font></dd>
                <dt><font size="-1"><i>graphviz-doc, graphviz-graphs</i> </font></dt>
                <dd><font size="-1">Optional user documentation and examples. </font></dd>
                <dt><font size="-1"><i>graphviz-devel, graphviz-debuginfo, graphviz-rtest</i> </font></dt>
                <dd><font size="-1">Optional for developers: headers, debugging symbols, regression test scripts and data. </font></dd>
                <dt><font size="-1"><i>graphviz-gd, graphviz-devil, graphviz_gdk_pixbuf, graphviz-ming</i> </font></dt>
                <dd><font size="-1">Optional renderers. <!--
<dt><i>graphviz-cairo</i>
<dd>Superceded by pango/cairo support in the base <i>graphviz</i> package in FC5 and later.
--> </font></dd>
                <dt><font size="-1"><i>graphviz-guile, graphviz-java, graphviz-lua, graphviz-ocaml, graphviz-perl, graphviz-php, graphviz-python, graphviz-R, graphviz-ruby, graphviz-sharp, graphviz-tcl</i> </font></dt>
                <dd><font size="-1">Optional language bindings to enable programs in those languages to use the facilities of graphviz. </font></dd>
                <dt><font size="-1"><i>webdot</i> </font></dt>
                <dd><font size="-1">Optional cgi-bin graph server.  Requires <i>graphviz</i> and <i>graphviz-tcl</i>. </font></dd>
            </dl>
            <p>&nbsp;</p>
<!-- Do not remove this comment or make any web server edits below this comment -->
