OUT=output_html
cd /home/graphviz/myhttpd
>$OUT
#cd /home/graphviz
ssh gviz@hg "(/home/gviz/bin/git_get_static_tgz.sh)" >> $OUT 2>&1
scp -r gviz@hg:html.tgz . >> $OUT 2>&1
tar xpzf html.tgz --atime-preserve 2>> $OUT
#rm html.tgz
scp -r gviz@hg:doc.tgz . >> $OUT 2>&1
tar xpzf doc.tgz --atime-preserve 2>> $OUT
#rm doc.tgz

