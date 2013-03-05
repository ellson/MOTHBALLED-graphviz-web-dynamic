
html_dir="/home/graphviz/myhttpd/html"
source_file="/data/pub/graphviz/development/SOURCES/graphviz-working.tar.gz"
file_list=""
for pdf_file in `tar tzf $source_file | grep pdf | grep "/lib/"`
do
	file_list="$file_list $pdf_file"
done


for doc_file in `tar tzf $source_file | grep pdf | grep "/doc/"`
do
	file_list="$file_list $doc_file"
done

echo $file_list

#tar xzf $source_file $file_list

#cp -R graphviz-*/* $html_dir
#rm -rf graphviz-*


