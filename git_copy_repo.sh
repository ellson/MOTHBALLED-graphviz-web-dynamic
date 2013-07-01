#!/bin/bash
[ $# -eq 0 ] && { echo "Usage $0 git_copy_repo repo_name"; exit 999; }

base=$1

SERVER="hg.research.att.com"
USR="gviz"
OUT="output_$base"
> $OUT
ssh $USR@$SERVER "(bin/git_get_repo_tgz.sh ${base})" > $OUT 2>&1
scp -r $USR@$SERVER:${base}.tgz . >> $OUT 2>&1
tar xzf ${base}.tgz 2>> $OUT
chmod 775 ${base} >> $OUT 2>&1
rm ${base}.tgz >> $OUT 2>&1
if [ ! -s $OUT ]
then
	rm $OUT
fi

