
#!/bin/bash 

r='\e[1;31m' 

clear 

read -p $r "DOMAIN :" d

echo 

echo

echo -e $r "HARVESTING...... "

msfconsole -q -x "use auxiliary/gather/search_email_collector; set domain $d; run;"

echo

echo

read -p $r "Press enter to go back" enter

cd Blackpearl-framework/lib

python msf.py
