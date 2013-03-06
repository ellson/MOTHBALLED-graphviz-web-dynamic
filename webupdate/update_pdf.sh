
html_dir="/home/graphviz/myhttpd/html/pdf"
source_file="/data/pub/graphviz/development/SOURCES/graphviz-working.tar.gz"
file_list=""

for pdf_file in `tar tzf $source_file | grep pdf`
do
	file_list="$file_list $pdf_file"
done


#echo $file_list

tar xzf $source_file $file_list

for pdf_file in `find graphviz-* -name "*.pdf"`
do
#echo $pdf_file
cp $pdf_file $html_dir
done

rm -rf graphviz-*




