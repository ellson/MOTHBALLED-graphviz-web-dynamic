echo "<table rules=\"groups\">"
let cnt=0;
for i in Gallery/*/*small.png
do
	if (( cnt % 4 == 0)); then
		echo
		echo "<tbody><tr>"
	fi
	echo "<td align=center>"
	title=`basename ${i%.small.png}`
	full=${i%.small.png}.html
	echo "<img src=\"$i\" alt=\"\" title=\"$title\">"
	echo "</td>"
	caption="$caption <td align=center> <A HREF=\"$full\">$title</A></td>"
	if (( cnt % 4 == 3)); then
		echo "</tr>"
		echo "<tr> $caption </tr></tbody>"
		caption=""
	fi
	let cnt=cnt+1;
done
if (( ( cnt - 1 )  % 4 != 3)); then
	echo "</tr>"
	echo "<tr> $caption </tr></tbody>"
	caption=""
fi
echo "</table>"
