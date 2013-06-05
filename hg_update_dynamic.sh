OUTPUT=output_dynamic_html
cd /home/graphviz/graphviz-web
> $OUTPUT
hg commit -m "Added website changes"  >> $OUTPUT 2>&1
# Get changes made by other users
hg pull  >> $OUTPUT 2>&1
# Merge changes together
hg merge >> $OUTPUT 2>&1
hg update >> $OUTPUT 2>&1
#Commit merged results
hg commit -m "Merged website changes" >> $OUTPUT 2>&1
#Push changes to server
hg push >> $OUTPUT 2>&1

