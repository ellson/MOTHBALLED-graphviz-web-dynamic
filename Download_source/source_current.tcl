<!-- Do not remove this comment or make any web server edits above this comment -->
<tr><td>
<table rules="all" width="100%">
<tr><th align="left"><br>Access Graphviz with Mercurial SCM</th></tr>
<tr><td align=left>
<br><b>Development release:&nbsp;</b>
hg clone http://hg.research.att.com/graphviz<br>
</td></tr>
<tr><td align=left>
<br><b>Stable release:&nbsp;</b>
hg clone http://hg.research.att.com/graphviz_28<br>
</td></tr>
<tr><td>&nbsp;<br></td></tr>
</table>
<h2>Requirements</h2>
<h3>Dependencies</h3>
<p>Consider these versions as the minimum suitable for graphviz, but please always use the latest available version of these packages.  If there is any problem with building graphviz against a latest version, please generate a bug report as we would very much like to know about it.
<p>
<i>HINT</i> If you are using an rpm-based system, by far the easiest way to determine all the build dependencies is to download the graphviz-xxx.src.rpm, run:  "rpmbuild --rebuild graphviz-xxx.src.rpm 2>t" , then edit "t" into a yum install command.
<p>
<dl>
	<dt>cairo-1.1.10.tar.gz [optional (required for libpangocairo), recommended]
	<dd><a href="http://cairographics.org/">http://cairographics.org/</a>
	<dt>expat-2.0.0.tar.gz [optional (required for HTML-like labels), recommended]
	<dd><a href="http://expat.sourceforge.net/">http://expat.sourceforge.net/</a> 
	<dt>freetype-2.1.10.tar.gz [optional (required for libpangocairo and for gd), recommended]
	<dd><a href="http://www.freetype.org/">http://www.freetype.org/</a>

	<dt>gd-2.0.34.tar.gz [optional, deprecated but needed for GIF output]
	<dd><a href="http://www.boutell.com/gd/">http://www.boutell.com/gd/</a>
        <dd><a href="http://www.graphviz.org/pub/tmp/gd-2.0.36RC1.tar.gz">www.graphviz.org/pub/tmp/</a>

	<dt>fontconfig-2.3.95.tar.gz [optional (required for libpangocairo and for gd), recommended]
	<dd><a href="http://www.fontconfig.org/wiki/">http://www.fontconfig.org/wiki/</a>
	<dt>urw-fonts.tar.gz [optional, required if fontconfig is unable to find any fonts]
	<dd><a href="ftp://ftp.gimp.org/pub/gimp/fonts">ftp://ftp.gimp.org/pub/gimp/fonts/</a>
<!--
	<dt>gettext-0.14.5.tar.gz
	<dd><a href="http://www.gnu.org/software/gettext/">http://www.gnu.org/software/gettext/</a>
-->
	<dt>glib-2.11.1.tar.gz [optional (required for libpangocairo), recommended]
	<dd><a href="http://www.gtk.org/">http://www.gtk.org/</a>
	<dt>libpng-1.2.10.tar.gz [optional (required for cairo, optional for gd), recommended]
	<dd><a href="http://www.libpng.org/pub/png/">http://www.libpng.org/pub/png/</a>
	<dt>pango-1.12.4.tar.gz provides libpangocairo [optional, recommended]
	<dd><a href="http://www.pango.org/">http://www.pango.org/</a>
	<dt>zlib-1.2.3.tar.gz [optional (required for libpng), recommended]
	<dd><a href="http://www.zlib.net/">http://www.zlib.net/</a>
	<dt>GTS [optional (required for sfdp, prism, smyrna), recommended]
	<dd><a href="http://gts.sourceforge.net/">http://gts.sourceforge.net/</a>
	<dt>GTK+ [optional (required for smyrna)]
	<dd><a href="http://www.gtk.org/">http://www.gtk.org/</a>
	<dt>GtkGLExt [optional (required for smyrna)]
	<dd><a href="http://projects.gnome.org/gtkglext/">http://projects.gnome.org/gtkglext/</a>
	<dt>Glade [optional (required for smyrna)]
	<dd><a href="http://glade.gnome.org/">http://glade.gnome.org/</a>
	<dt>Glut [optional (required for smyrna)]
	<dd><a href="http://www.opengl.org/resources/libraries/glut/">http://www.opengl.org/resources/libraries/glut/</a>
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
	<dd><a href="http://pages.cs.wisc.edu/~ghost/">http://pages.cs.wisc.edu/~ghost/</a>
	<dt>libtool-1.5.22.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/libtool/">http://ftp.gnu.org/gnu/libtool/</a>
	<dt>m4-1.4.4.tar.gz [if building from CVS]
	<dd><a href="http://ftp.gnu.org/gnu/m4/">http://ftp.gnu.org/gnu/m4/</a> [if building from CVS]
	<dt>pkg-config-0.20.tar.gz
	<dd><a href="http://www.freedesktop.org/wiki/Software/pkg-config/">http://www.freedesktop.org/wiki/Software/pkg-config/</a>
	<dt>swig-1.3.29.tar.gz
	<dd><a href="http://www.swig.org/">http://www.swig.org/</a>
</dl>
<!-- Do not remove this comment or make any web server edits below this comment -->
<!-- cut2 -->
}


puts $fout "</td></tr></table>"

close $fout
