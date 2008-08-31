#!/usr/bin/python

'''  put the following before <body> to enable analytics (tracking)
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-3543530-1";
urchinTracker();
</script>
'''

import sys

if len(sys.argv) < 2:
  exit

pageset = sys.argv[1].split()

source = sys.argv[2]
basename = source.split('.')[0]
if len(basename.split('_')) > 1:
  baseparent = basename.split('_')[0]
else:
  baseparent = ''

if basename == 'Download':
  fout = open(basename + '.php', 'w')
  fin = open('Agree.ht', 'r')
  fout.write(fin.read())
  fin.close
  fout = open(basename + '..php', 'w')
  fout.write('<?php setcookie(\'CPLclickthroughlicense\', \'clicked\', time()+60*60*24*30); ?>\n')
else:
  fout = open(basename + '.php', 'w')


fout.write('''<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<!--
    This is a generated document.  Please edit "''' + basename + '''.ht" instead
    and then type "make".
-->
<html>
<head>
<title>Graphviz</title>
<META name="keywords" content="graph drawing, graph layout,
network visualization, graph visualization, graphviz">
</head>
<body bgcolor="white">
<table cellspacing="20">
<tr><td valign="top" rowspan="2">
<!-- icon -->
<img src="gvicons/doc-''' + basename.lower() + '''.png" alt="''' + basename + '''">
<p>
<!-- menu -->
\t<table bgcolor="#c0c0ff">\n''')

for page in pageset:
  menuitem = page.split('.')[0]
  if len(menuitem.split('_')) > 1:
    menuparent = menuitem.split('_')[0]
    if len(menuitem.split('_')) > 2:
      menuname = menuitem.split('_')[2]
    else:
      menuname = menuitem.split('_')[1]
    indent = '&nbsp;&nbsp;'
  else:
    menuparent = ''
    menuname = menuitem
    indent = ''
  if menuname != "att linux":
      if basename == menuparent or baseparent == menuparent or menuparent == '':
        if basename == menuitem:
          fout.write('\t<tr><td bgcolor="#c0ffc0">' + indent + menuname + '</td></tr>\n')
        else:
          fout.write('\t<tr><td>' + indent + '<a href="' + menuitem + '.php">' + menuname + '</a></td></tr>\n')

fout.write('''\t</table> 
</td>
<td bgcolor="#c0ffc0" height="40">
<!-- header -->
<h2>Graphviz - Graph Visualization Software</h2>
</td></tr>
<tr><td valign="top">
<!-- body -->\n''')

fin = open(source, 'r')
fout.write(fin.read())
fin.close

fout.write('''</td></tr>
</table>
</body>
</html>\n''')

fout.close
