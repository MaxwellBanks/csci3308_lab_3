#!/bin/bash
# Authors : Maxwell Banks
# Date: 2.11.20

#Problem 1 Code:
#Make sure to document how you are solving each problem!

#1
#Ask
echo "Input a file name and a regular expression"
#Read in file name
read fileName
#read in regex
read regexInput

#2
#Literally just regex syntax
grep regexInput fileName

#3
#count number of phone numbers
#formula: 3x any char + '-' + 3x any char + '-' + 4x any char
echo "Phone numbers count"
grep -c "[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" "regex_practice.txt"

#4
#4.1
#Finding emails
#Format: any number of any char + @ + any number any char + . + any number any char
grep -c ".*@.*\..*" "regex_practice.txt"

#4.2
#List of all phone numbers in 303 area code
#Format: 303- + 3x any char + - + 4x any char
grep -o "303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]" "regex_practice.txt"

#4.3
#Store a list of all emails from geocities.com in email_results.txt
#Format: 4.1, but altered for geocities.com >> email_results.txt
grep -o ".*@geocities\.com" "regex_practice.txt" >> "email_results.txt"


