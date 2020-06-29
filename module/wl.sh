#!/bin/bash
clear
echo -e "\e[31m"
echo "=========================================="
echo -e "\e[92m"
echo -e "WORDLISTER"
echo
echo -e "\e[31m"
echo "========================================="

echo -e "\e[92m"

OPTIONS="AUTOMATIC MANUAL BACK"
select opt in $OPTIONS; do

if [ "$opt" = "AUTOMATIC" ]; then

clear
echo "Starting..." | lolcat
sleep 2
clear

echo -e "\e[92m"

echo "Name of the victim :"
read n

echo

echo "Phone number of the victim :"
read p
echo

echo "Victim's father name :"
read f

echo

echo "Victim's mother name :"
read m

echo

echo "Victims Date of Birth :"
read d

echo

echo "Victims Year of Birth :"
read yb

echo

echo "Vitims favorite colour :"
read c

echo

echo "Victims favorite person :"
read s 
echo

echo "Victims nickname :"
read nn

echo

echo "Victims Lover's name :"
read l

echo

echo "Victims favourite food :"
read ff

sleep 1

clear

echo "Generating Word list." | lolcat
sleep 0.5
clear
echo "Generating Word list.." | lolcat
sleep 0.5
clear
echo "Generating Word list..." | lolcat
sleep 1
echo "
$n
$p
$n$p
$f$m
$d$d
$n$d
$p$d
$n$yb
$p$yb
$n$c
$p$c
$s
$s$s
$n$s
"$n""@12345"
"$p""@12345"
$n$l
$l$n
"$n""@""$l"
"$l""@""$n"
$f$f$f$f
"$n""@123"
"123@""$n"
"12345@""$n"
"$c""@123"
"123@""$c"
"$c""@12345"
"12345@""$c"
"123123""$n"
"$n""123123"
"@""$n"
"$n""@"
"$n""@""$yb"
"$yb""@""$n"
"$n""@""$d"
"$d""@""$n"
"$n""@""$d"
"$d""@""$n"
"$yb""@""$yb"
"$yb""@""$d"
"$d""@""$d"
"$d""@""$yb"
"123456789@""$n"
"$n""@123456789"
$n$n
"$n$n""@""$n"
"$n""$n$n"
"$n""@""$d"
"$n$n""@""$d"
"$d""@""$n"
"$d""@""$n$n"
"$n""@""$yb"
"$yb""@""$n"
"$n$n""@""$yb"
"$yb""@""$n$n"
"$n""@""123"
"123@""$n"
"$n$n""@""123"
"123@""$n$n"
"$n""@""12345"
"12345@""$n"
"12345@""$n$n"
"$n$n""@12345"
C" > $HOME/password.txt

clear

echo "Word list sucessfully created" | lolcat
sleep 2
clear

exit

elif [ "$opt" = "MANUAL" ]; then
clear
echo "Please wait..." | lolcat
sleep 1
nano $HOME/password1.txt
clear
echo "wordlist sucessfully created" | lolcat
sleep 1
clear
exit

elif [ "$opt" = "BACK" ]; then
echo -e "\e[92m"
pearl 

else
echo -e "\e[31m"
echo "INVALID INPUT"
exit

fi
done


