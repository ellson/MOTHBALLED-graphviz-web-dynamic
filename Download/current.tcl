#!/usr/bin/tclsh
                                                                                
set docroot /var/www/www.graphviz.org
set archive pub/graphviz/ARCHIVE
set current pub/graphviz/CURRENT
                                                                                
proc puts_latest {fout docroot dir} {
  set types {tar.gz src.rpm i386.rpm noarch.rpm fc1.jce.src.rpm fc1.jce.i386.rpm fc1.jce.noarch.rpm rh73.jce.src.rpm rh73.jce.i386.rpm rh73.jce.noarch.rpm exe}
  set regexp {([-a-z]*)([-0-9.]*)([a-z][.a-z0-9]*)}

  if {![file exists $docroot/$dir]} {
    puts $fout "<tr><td align=left><font color=\"red\">Directory \"$docroot/$dir/\" was not found.</font></td></tr>"
    return
  }

  set owd [pwd]
  cd $docroot/$dir
  foreach {fn n v t} [regexp -all -inline $regexp [glob -nocomplain *]] {
    if {[file isdir $fn]} {continue}
    if {[string first graphviz $fn] == 0} {
      lappend GRAPHVIZ([list $n $t]) [list $fn $v]
    }
    if {[string first webdot $fn] == 0} {
      lappend WEBDOT([list $n $t]) [list $fn $v]
    }
    if {[string first webfonts $fn] == 0} {
      lappend WEBFONTS([list $n $t]) [list $fn $v]
    }
  }

  foreach nt [array names GRAPHVIZ] {
    foreach {n t} $nt {break}
    set fnv [lindex [lsort -decreasing -dictionary -index 1 $GRAPHVIZ($nt)] 0]
    foreach {fn v} $fnv {break}
    lappend FILES($t) $fn
  }
  foreach nt [array names WEBDOT] {
    foreach {n t} $nt {break}
    set fnv [lindex [lsort -decreasing -dictionary -index 1 $WEBDOT($nt)] 0]
    foreach {fn v} $fnv {break}
    lappend FILES($t) $fn
  }
  foreach nt [array names WEBFONTS] {
    foreach {n t} $nt {break}
    set fnv [lindex [lsort -decreasing -dictionary -index 1 $WEBFONTS($nt)] 0]
    foreach {fn v} $fnv {break}
    lappend FILES($t) $fn
  }
  cd $owd
  foreach t $types {
    if {[info exists FILES($t)]} {
      puts $fout "<tr><td align=left>"
      foreach fn [lsort $FILES($t)] {
        puts $fout "<a href=\"/$dir/$fn\">$fn</a><br>"
      }
      puts $fout "</td></tr>"
    }
  }
}

set fout [open Download.ht w]

puts $fout "<p>This page lists sources and binaries that we provide.
There are also some <a href=\"Resources.html#third-party-distributions\">third-party distributions</a>
that we know of.<p>"

puts $fout "<table><tr><td>"
                                                                                
# the latest release is in ARCHIVE
puts $fout "<table rules=\"all\" width=\"100%\">"
puts $fout "<tr><th align=\"left\">Release</th></tr>"
puts_latest $fout $docroot $archive
puts $fout "</table>"

puts $fout "</td></tr><tr><td>&nbsp;</td></tr><tr><td>"

# the latest snapshot is in CURRENT
puts $fout "<table rules=\"all\" width=\"100%\">"
puts $fout "<tr><th align=\"left\">Development Snapshot</th></tr>"
puts_latest $fout $docroot $current
puts $fout "</table>"

puts $fout "</td></tr><tr><td>&nbsp;</td></tr><tr><td>"

# CVS instructions
puts $fout "<table rules=\"all\" width=\"100%\">"
puts $fout "<tr><th align=\"left\">CVS</th></tr>"
puts $fout "<tr><td align=left>"
puts $fout "<b>cvs -d :pserver:anoncvs@cvs-graphviz.research.att.com:/home/cvsroot login</b><br>"
puts $fout "<i>(password is \"anoncvs\")</i></br>"
puts $fout "<b>cvs -d :pserver:anoncvs@cvs-graphviz.research.att.com:/home/cvsroot co graphviz</b><br>"
puts $fout "</td></tr>"
puts $fout "</table>"

puts $fout "</td></tr></table>"

close $fout
