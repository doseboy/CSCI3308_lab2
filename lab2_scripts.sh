#!/bin/bash
# Authors : Your Name & Your partner's name
# Date: 1/1/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
#grep -c $1
#count all lines in first space of command line
echo "Enter a filename:"
read fileName1
echo "Enter regular exp"
read regex
grep -c $regex $fileName1

#3.1
echo "phone numbers in regex:"
grep -Ec '[0-9]{3}-[0-9]{3}-[0-9]{4}' regex_practice.txt

#3.2
echo "emails in regex"
grep -Ec '[a-z_-.0-9]+@' regex_practice.txt
#improve regex
#3.3
grep -E '303-[0-9]{3}-[0-9]{4}' regex_practice.txt > phone_results.txt
#3.4
echo "emails in geocities"
grep -E '[a-z_-.0-9]+@geocities.com' regex_practice.txt > email_results.txt
# imporve this regex -- @geocities.com
#3.5
grep -E $1 regex_practice.txt > command_results.txt 
