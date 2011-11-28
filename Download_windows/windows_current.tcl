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
