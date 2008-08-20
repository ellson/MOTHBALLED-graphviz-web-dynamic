#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release" pub/graphviz/stable/SOURCES
    "development snapshot" pub/graphviz/development/SOURCES
}

set packages {
    graphviz
    webdot
}

set package_exclude {
    graphviz-cairo
    graphviz-win
}

set platforms {
    Sources {tar.gz tar.gz.md5} ""
}
                                                                                
proc puts_latest {fout docroot dir package package_exclude type} {
    set regexp {([-a-z]*)([-0-9.]*)([a-z][.a-z0-9]*)}
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

set fout [open Download_source.ht w]

puts $fout "<table>"
puts $fout "<tr><td>"
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
puts $fout "</td></tr>"
puts $fout "<tr><td>"
	
# CVS instructions
puts $fout "<table rules=\"all\" width=\"100%\">"
puts $fout "<tr><th align=\"left\">CVS</th></tr>"
puts $fout "<tr><td align=left>"
puts $fout "<b>cvs -d :pserver:anoncvs@cvs-graphviz.research.att.com:/home/cvsroot login</b><br>"
puts $fout "<i>(password is \"anoncvs\")</i><br>"
puts $fout "<b>cvs -d :pserver:anoncvs@cvs-graphviz.research.att.com:/home/cvsroot co graphviz2</b><br>"
puts $fout "</td></tr>"
puts $fout "<tr><td><p>"
puts $fout "<font size=\"+1\" color=\"red\">Note:</font>"
puts $fout "The old \"graphviz\" cvs tree has been frozen at the graphviz-2.2 stable release."
puts $fout "Starting with the graphviz-2.3 development series we have moved to a new \"graphviz2\" tree."
puts $fout "</td></tr>"
puts $fout "</table>"

## GIT instructions
#puts $fout "<table rules=\"all\" width=\"100%\">"
#puts $fout "<tr><td><b>"
#puts $fout "<a href=\"/git/gitweb.cgi\">Graphviz Source Control</a> - is now using"
#puts $fout "<a href=\"http://www.kernel.org/pub/software/scm/cogito/\">cogito</a>."
#puts $fout "</b></td></tr>"
#puts $fout "</table>"

puts $fout {
<h2>Requirements</h2>
<h3>Dependencies</h3>
<dl>
	<dt>cairo-1.1.10.tar.gz [optional (required for libpangocairo), recommended]
	<dd><a href="http://cairographics.org/">http://cairographics.org/</a>
	<dt>expat-2.0.0.tar.gz
	<dd><a href="http://expat.sourceforge.net/">http://expat.sourceforge.net/</a> 
	<dt>freetype-2.1.10.tar.gz [optional (required for libpangocairo and forgd), recommended]
	<dd><a href="http://www.freetype.org/">http://www.freetype.org/</a>

	<dt>gd-2.0.34.tar.gz [optional, deprecated but needed for GIF output]
	<dd><a href="http://www.libgd.org//">http://www.libgd.org/</a>

	<dt>fontconfig-2.3.95.tar.gz [optional (required for libpangocairo and for gd), recommended]
	<dd><a href="http://www.fontconfig.org/wiki/">http://www.fontconfig.org/wiki/</a>
	<dt>urw-fonts.tar.gz [optional, required if fontconfig is unable to find any fonts]
	<dd><a href="ftp://ftp.gimp.org/pub/gimp/fonts">ftp://ftp.gimp.org/pub/gimp/fonts/</a>
	<dt>gettext-0.14.5.tar.gz
	<dd><a href="http://www.gnu.org/software/gettext/">http://www.gnu.org/software/gettext/</a>
	<dt>glib-2.11.1.tar.gz [optional (required for libpangocairo), recommended]
	<dd><a href="http://www.gtk.org/">http://www.gtk.org/</a>
	<dt>libpng-1.2.10.tar.gz [optional (required for cairo, optional for gd), recommended]
	<dd><a href="http://www.libpng.org/pub/png/">http://www.libpng.org/pub/png/</a>
	<dt>pango-1.12.4.tar.gz provides libpangocairo [optional, recommended]
	<dd><a href="http://www.pango.org/">http://www.pango.org/</a>
	<dt>zlib-1.2.3.tar.gz [optional (required for libpng), recommended]
	<dd><a href="http://www.zlib.net/">http://www.zlib.net/</a>
</dl>
<h3>Tools</h3>
<dl>
	<dt>autoconf-2.59.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/autoconf/">http://ftp.gnu.org/gnu/autoconf/</a>
	<dt>automake-1.9.6.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/automake/">http://ftp.gnu.org/gnu/automake/</a>
	<dt>bison-2.3.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/bison/">http://ftp.gnu.org/gnu/bison/</a>
	<dt>cvs-1.11.22.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/non-gnu/cvs/source/stable/">http://ftp.gnu.org/non-gnu/cvs/source/stable/</a>
	<dt>flex-2.5.4a.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/non-gnu/flex/">http://ftp.gnu.org/non-gnu/flex/</a>
	<dt>gcc-4.1.1.tar.bz2
	<dd><a href="http://ftp.gnu.org/gnu/gcc/">http://ftp.gnu.org/gnu/gcc/</a>
	<dt>gcc-g++-4.1.1.tar.bz2
	<dd><a href="http://ftp.gnu.org/gnu/gcc/">http://ftp.gnu.org/gnu/gcc/</a>
	<dt>ghostscript-8.54-gpl.tar.gz
	<dd><a href="http://www.cs.wisc.edu/~ghost/">http://www.cs.wisc.edu/~ghost/</a>
	<dt>libtool-1.5.22.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/libtool/">http://ftp.gnu.org/gnu/libtool/</a>
	<dt>m4-1.4.4.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/m4/">http://ftp.gnu.org/gnu/m4/</a> [if building from CVS]
	<dt>pkg-config-0.20.tar.gz
	<dd><a href="http://pkgconfig.freedesktop.org/wiki/">http://pkgconfig.freedesktop.org/wiki/</a>
	<dt>swig-1.3.29.tar.gz
	<dd><a href="http://www.swig.org/">http://www.swig.org/</a>
</dl>
}


puts $fout "</td></tr></table>"

close $fout
