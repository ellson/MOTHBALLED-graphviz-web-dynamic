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
  fout.close
  fin.close
  fout = open(basename + '..php', 'w')
  fout.write('''<!-- header --><?php setcookie(\'EPLclickthroughlicense\', \'clicked\', time()+60*60*24*30); ?>\n''')
else:
  fout = open(basename + '.php', 'w')
  fout.write('''<!-- header -->''')


fout.write('''
<!--
    This document is generated from "''' + basename + '''.ht".  You may edit 
    the page source locally or on the web server if you have permission to do so.
    After editing is complete, do the following: 
       Preserve web server edits by running "make get_source".  
       Skip this step if editing is done locally to avoid overwriting edits.

       Update source from cvs; resolve any conflicts; commit to cvs.
 
       Run "make" to move the source to the web server.
-->
<table cellspacing="20">
<tbody>
<tr><td valign="top" rowspan="2">
<!-- icon -->
<img src="gvicons/doc-''' + basename.lower() + '''.png" alt="''' + basename + '''">
<p>&nbsp;</p>
''')

fout.write('''
</td>
<td>&nbsp;</td></tr>
<tr><td valign="top">
<!-- body -->\n''')

fin = open(source, 'r')
fout.write(fin.read())
fin.close

fout.write('''<br /><!-- trailer -->
</td></tr>
</tbody>
</table>
\n''')

fout.close
