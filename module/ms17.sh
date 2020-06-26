#!/bin/bash 

echo $c
read -p "Victim's IP:" r
msfconsole -q -x " use auxiliary/scanner/smb/smb_ms17_010; set rhosts $r ; exploit ;exit ;"
echo
echo 
read -p "Press enter to go back", enter
cd Blackpearl-framework/lib
python msf.py
