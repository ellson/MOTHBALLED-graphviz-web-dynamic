#! /bin/bash

error_file="select_html_error_file"
if [ ! -f $error_file ]
then
	> $error_file
fi



#Called from Makefile when rule get_source is run.
#Takes as argument a list of php file names and extracts from the drupal database the
#contents of the web pages that have corresponding titles.  The exported web page is 
#then stripped of dynamically generated content and template content common to all web
#pages.  This stripped down content is then inserted into the flat files that are used
#by make to generate the php files. In this way changes made to the web pages with the
#drupal WYSIWYG editor are captured in the files used to generate web content during the 
#make process.  This has the result of preserving changes to the drupal database
#when make is run. Otherwise, the WYSIWYG changes will be overwritten whenever make is run.
while [ -n "$1" ]
do
#basename is obtained by stripping the input php filename down to the html page title used in drupal
basename=`echo -n "$1" | sed -e s/.php// -e s/Download_linux_// -e s/Download_//`

#First check that the database is online and files are above a minimum size.
arg=`echo "');"`
count=`echo -n "call select_html('${basename}${arg}" | mysql -u root -pgraphviz2011 -D graphviz | wc -w`
if [ $count -lt 200 ] 
then
	if [ $basename = "att" -o $basename = "Bugs"  -o $basename = "MailingList" ]
	then
		echo > /dev/null
	else

		echo "`date +%c`: ${basename} size is ${count}. Database may be down." >> $error_file;
		shift;
		continue;
	fi
fi



targetname="${basename}.ht"
targetdir="."
#when the php filename begins with Download it has to be handled differently
#ignor the case where input file is Download_att.php
if [ "`echo -n "$1" | sed -e s/^Download.*$/Download/`" = "Download" ]
then
	if [ $basename = "Download" ]
	then
		#the  "Download..php" file is generated from Download.ht
		#the basename is therefore "Download."
		basename="${basename}."

		#construct the select_html stored procedure call and pass it to MySQL.
		#Delete the first line which is the column title
		#Replace occurances of \n in the result with real newline characters
		#Delete all lines before the line containing <!-- body --> and all lines after the line
		#containing <!-- trailer -->
		#Write the result to the target flat file
echo -n "call select_html('${basename}`echo "');"`" | mysql -u root -pgraphviz2011 -D graphviz | sed -e 1d -e 's/\\n/\
/g' | sed -e '/-- header --/,/-- body --/d' | sed -e '/-- trailer --/,$d' > ${targetdir}/${targetname}
	elif [ $basename = "att" ]
	then
		echo "skipping Download_att"
	else
		#the basename begins with Download_
		#the php files are generated from tcl scripts in a subdirectory
		targetdir=`echo -n "./${1}" | sed -e s/.php//`
		targetname="`echo -n $1 | sed -e s/.php// -e s/Download_//`_current.tcl"
		temptarget="`echo -n $1 | sed -e s/.php// -e s/Download_//`_current_tmp.tcl"
		comment1="-- Do not remove this comment or make any web server edits above this comment --"
		comment2="-- Do not remove this comment or make any web server edits below this comment --"
		comment3="-- cut1 "
		comment4="-- cut2 "
		#Write the content of the target tcl file from the first line up to the line containing
		#comment3  into a temporary file. Verify the expected output.

		#Construct the select_html stored procedure call and pass it to MySQL. 
		#This stored procedure extracts the web page from the drupal database.
		#Pass the result of the stored procedure call downstream for further processing
		#Remove the column title line and replace occurances of \n with real newline characters.
		#Replace occurances of \t with real tab characters
		#Cut out everything between the line containing comment1 and the line containing comment2 and
		#append the result to the temporary file.  This is the editable content of the web page
		#Verify the expected output.

		#Select the content of the target tcl file from the line containing comment4 to the end of 
		#the file and append it to the temporary file.  Verify the expected output.
		#Replace the target tcl file with the temporary file and restore the executable mode.

		sed -ne "1,/${comment3}/p" ${targetdir}/${targetname} > ${targetdir}/${temptarget}

		#Verify expected output
		if [ "`sed '$!d' ${targetdir}/${temptarget}`" != "<!${comment3}-->" ]
		then
			echo "`date +%c`: Unexpected result while reading ${targetdir}/${targetname} from top to cut1." >> $error_file;
		else
		#Continue processing

		echo -n "call select_html('${basename}`echo "');"`" | mysql -u root -pgraphviz2011 -D graphviz \
		| sed -e 1d -e 's/\\n/\
/g' \
		| sed -e "s/\\\t/	/g" \
		| sed -ne "/${comment1}/,/${comment2}/p" >> ${targetdir}/${temptarget}

		#Verify expected output
		if [ "`sed '$!d' ${targetdir}/${temptarget} | sed s/\\\r//`" != "<!${comment2}>" ]
		then
			echo "`date +%c`: Unexpected result while reading database content for ${targetdir}/${targetname}" >> $error_file;
		else
		#Continue processing

		sed -ne "/${comment4}/,\$p" ${targetdir}/${targetname} >> ${targetdir}/${temptarget}

		#Verify expected output
		if [ "`sed -ne "/${comment2}/,$ p" ${targetdir}/${temptarget} | sed -e "/${comment4}/!d"`" != "<!${comment4}-->" ]
		then
			echo "`date +%c`: Unexpected result while reading ${targetdir}/${targetname} from comment2 to bottom." >> $error_file;
		else
		#Continue processing

		mv -f ${targetdir}/${temptarget} ${targetdir}/${targetname}
		chmod +x ${targetdir}/${targetname}
		fi
		fi
		fi
	fi
else
basename=`echo ${basename} | sed -e s/MailingList/"Mailing List"/`;
echo -n "call select_html('${basename}`echo "');"`" | mysql -u root -pgraphviz2011 -D graphviz | sed -e 1d -e 's/\\n/\
/g' | sed -e "s/\\\t/	/g" | sed -e '/-- header --/,/-- body --/d' | sed -e '/-- trailer --/,$d' > ${targetdir}/${targetname}
fi
shift
done
if [ -s $error_file ]
then
	echo "*****************************************"
	echo
	echo "There are errors reported in $error_file"
	echo
	echo "*****************************************"
fi
