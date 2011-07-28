OUT=output_html
cd /home/graphviz/myhttpd
#cd /home/graphviz
ssh gviz@hg "(/home/gviz/bin/hg_get_static_tgz.sh)" > $OUT 2>&1
scp -r gviz@hg:html.tgz . >> $OUT 2>&1
tar xpzf html.tgz --atime-preserve 2>> $OUT
rm html.tgz

