echo "<table rules=\"groups\">"
let cnt=0;
for i in Gallery/*/*small.png
do
	if (( cnt % 4 == 0)); then
		echo "<tbody><tr>"
	fi
	title=`basename ${i%.small.png}`
	full=${i%.small.png}.html
	echo "<td align=center><a href=\"$full\"><img src=\"$i\" border=\"0\" alt=\"\" title=\"$title\"></a></td>"
	caption="$caption <td align=center> <a href=\"$full\">$title</a></td>"
	if (( cnt % 4 == 3)); then
		echo "</tr><tr> $caption </tr></tbody>"
		caption=""
	fi
	let cnt=cnt+1;
done
if (( ( cnt - 1 )  % 4 != 3)); then
	echo "</tr><tr> $caption </tr></tbody>"
	caption=""
fi
echo "</table>" 

echo "<p>"
echo "Also see Yifan's <a href=\"http://www.research.att.com/~yifanhu/GALLERY/GRAPHS/index.html\">gallery of large graphs</a>, all generated with the <i>sfdp</i> layout engine, but colorized by postprocessing the PostScript files."
echo "<p>"
echo "Please send copyright-free donations of interesting graphs to:"
echo "<a href=\"http://www.research.att.com/~yifanhu/contact.html\"> Yifan Hu </a>"

