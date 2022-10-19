#! /bin/bash


## Put current date as yyyy-mm-dd in $date

current_date=$(date '+%Y-%m-%d')
#current_date=$(date)


## The stat command will give you the last modification time- "stat -c %y <filename>"
#last_modified=`stat -c %y /home/prageya/Downloads/GitToken`


## Put the last modified date of a file in yyyy-mm-dd- "date -r <filename> '+%Y-%m-%d'"

last_modified=$(date -r /home/prageya/Downloads/download.html '+%Y-%m-%d')



echo "Today's Date is $current_date"
echo "File Update Date is $last_modified"

if [ $current_date == $last_modified ]; then
     echo "The File is UPDATED";
else
     mail -s 'File Not Updated' -a From:Prageya\<prageya.singh@reflexsolution.com\> ravi@reflexsolution.com <<< 'Your file was not updated.';
fi


## To run in "crontab -e" put this "* * * * * sh /home/prageya/Update_Script/update.sh"

## To send mail- "mail -s 'File Not Updated' -a From:Prageya\<prageya.singh@reflexsolution.com\> ravi@reflexsolution.com <<< 'Your file was not updated.'"
