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
