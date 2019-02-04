#!/bin/bash
# Authors : Mohamad Aqbar Azman
# Date: 3/2/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#For Problem 1-accept a regular expression and file name from the user with a prompt
#For this just follow the same thing that we did to practice bash
echo "Enter a regular expression"
read regexp
echo "Enter the file name to search for regular expression"
read file

#NUmber 2-feed the user's reg exp into grep and run into the user's chosen file
grep "$regexp" $file

#3-1:count the number of phone numbers
#By going through the text file an example of phone number is 303-404-3456
#Hence we just look up this kind of format in the text file by hard code it into this script
grep -c '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt 
#next count the number of emails pretty much the same as above
grep -c '[0-9A-Za-z]\+@[0-9A-Za-z]\+\.[a-z]\{2,\}' regex_practice.txt
#Next one same as the first one we need to go through the phone number but we only want the phone number with 303 in front hence just use or statement
grep '[0-9]\{3\}\-[0-9]\{3\}\-[0-9]\{4\}' regex_practice.txt | grep ^303 >>phone_results.txt
#Then we need to list all of the emails from geocities.com and store the results
grep '[0-9A-Za-z]\+@[0-9A-Za-z]\+\.[a-z]\{2,\}' regex_practice.txt | grep -w "geocities.com" >>email_results.txt
#Then instead of hardcode, we gnna use the user-prompt regexp to find what we want in the text file
grep "$regexp" regex_practice.txt>>command_results.txt

