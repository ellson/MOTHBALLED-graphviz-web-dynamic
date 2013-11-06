#!/bin/bash


base=graphviz

SERVER="hg.research.att.com"
USR="gviz"
OUT=~/output_$base
> $OUT

#ssh $USR@$SERVER "(bin/git_get_repo_tgz.sh ${base})" > $OUT 2>&1
#scp -r $USR@$SERVER:${base}.tgz . >> $OUT 2>&1
#tar xzf "${base}.tgz" 2>> $OUT
cd ${base}
git pull >> $OUT 2>&1
cd ..
chmod 775 ${base} >> $OUT 2>&1
touch ${base}
#rm ${base}.tgz >> $OUT 2>&1
if [ ! -s $OUT ]
then
	rm $OUT
fi

