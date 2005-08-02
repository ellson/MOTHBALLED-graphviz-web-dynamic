#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org

set releases {
    "current stable release" pub/graphviz/ARCHIVE
    "development snapshot" pub/graphviz/CURRENT
}

set packages {
    graphviz
    webdot
}

set platforms {
    Sources {tar.gz} ""
}
                                                                                
proc puts_latest {fout docroot dir package type} {
    set regexp {([-a-z]*)([-0-9.]*)([a-z][.a-z0-9]*)}
    if {![file exists $docroot/$dir]} {
        puts $fout "<font color=\"red\">Directory \"$docroot/$dir/\" was not found.</font>"
        return
    }
    set owd [pwd]
    cd $docroot/$dir
    foreach {fn n v t} [regexp -all -inline $regexp [glob -nocomplain *]] {
        if {[file isdir $fn]} {continue}
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
puts $fout "<col>"
for {set i 0} {$i < [llength $releases] / 2} {incr i} {
    puts $fout "<colgroup><col></colgroup>"
}

foreach package $packages {
    puts $fout "<tr><th align=\"left\"><font size=\"+1\">$package</font></th>"
    foreach {releasename releasedir} $releases {
    	puts $fout "<th><font size=\"-1\">$releasename</font></th>"
    }
    puts $fout "</tr>"
    foreach {platform types comment} $platforms {
        puts $fout "<tbody>"
        puts $fout "<tr><th align=\"right\"><font size=\"-1\">$platform</font></th>"
        foreach {releasename releasedir} $releases {
            puts $fout "<td align=\"left\"><font size=\"-1\">"
            foreach type $types {
                puts_latest $fout $docroot $releasedir $package $type
            }
            puts $fout "</font></td>"
        }
        puts $fout "</tr>"
        puts $fout "</tbody>"
    }
    puts $fout "<tr><td colspan=\"[expr {1 + ([llength $releases] / 2)}]\">&nbsp;</td></tr>"
}

puts $fout "</table>"
puts $fout "</td></tr>"
	
# # CVS instructions
# puts $fout "<table rules=\"all\" width=\"100%\">"
# puts $fout "<tr><td>"
# puts $fout "<table rules=\"all\" width=\"100%\">"
# puts $fout "<tr><th align=\"left\">CVS</th></tr>"
# puts $fout "<tr><td align=left>"
# puts $fout "<b>cvs -d :pserver:anoncvs@cvs-graphviz.research.att.com:/home/cvsroot login</b><br>"
# puts $fout "<i>(password is \"anoncvs\")</i><br>"
# puts $fout "<b>cvs -d :pserver:anoncvs@cvs-graphviz.research.att.com:/home/cvsroot co graphviz2</b><br>"
# puts $fout "</td></tr>"
# puts $fout "<tr><td><p>"
# puts $fout "<font size=\"+1\" color=\"red\">Note:</font>"
# puts $fout "The old \"graphviz\" cvs tree has been frozen at the graphviz-2.2 stable release."
# puts $fout "Starting with the graphviz-2.3 development series we have moved to a new \"graphviz2\" tree."
# puts $fout "</td></tr>"
# puts $fout "</table>"

puts $fout "<p><b>"
puts $fout "<a href=\"/git/gitweb.cgi\">Graphviz Source Control</a> - is now using
puts $fout "<a href=\"http://www.kernel.org/pub/software/scm/cogito/\">cogito</a>.
puts $fout "</b></p>"

puts $fout "</td></tr></table>"

close $fout
