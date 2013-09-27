#!/bin/bash

#start construction of the sql stored procedure
echo -n "call update_html('" ;
#dump content of .php file and escape single quotes with backslash
cat $1 | sed -e "s/[\\']/\\\'/g"; 
#insert the title of the page being inserted as the second argument to the stored procedure
echo -n "','$1" | sed -e s/.php// -e s/Download_linux_// -e s/Download_//  -e s/MailingList/"Mailing List"/;
echo "');" ;

#pipe output to
#mysql -u root -ppassword -D drupal

