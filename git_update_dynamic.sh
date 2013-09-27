OUTPUT=output_dynamic_html
cd /home/graphviz/graphviz-web
> $OUTPUT
git commit -am "Added website changes"  >> $OUTPUT 2>&1
# Get changes made by other users
git pull  >> $OUTPUT 2>&1
#Commit merged results - needed in hg but not in git
#git commit -am "Merged website changes" >> $OUTPUT 2>&1
#Push changes to server
git push origin master>> $OUTPUT 2>&1

