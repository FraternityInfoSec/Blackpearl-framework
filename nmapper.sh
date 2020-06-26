#! /bin/bash
clear
green='\e[1;35m'
cyan='\e[1;35m'
red='\e[1;35m'
blue='\e[1;35m'
white='\e[1;35m'
yellow='\e[1;35m'
sleep 1
figlet NMAPPER
sleep 2
echo -e $cyan"Note : Nmap takes time to load commands. It's speed depends your Internet speed. So be patience in running commands"
echo
echo
echo -e $red"{$blue 1$red }$blue Scan a website to find open ports?"
echo 
echo -e $red"{$blue 2$red }$blue Scan Open Port Only "
echo 
echo -e $red"{$blue 3$red }$blue Scan Subnet"
echo 
echo -e $red"{$blue 4$red }$blue Scan a Range Of Ports"
echo 
echo -e $red"{$blue 5$red }$blue Scan 100 Most Common Ports"
echo 
echo -e $red"{$blue 6$red }$blue Scan All 65535 Ports" 
echo 
echo -e $red"{$blue 7$red }$blue Scan Using TCP Connect"
echo 
echo -e $red"{$blue 8$red }$blue Scan Using TCP SYN Scan"
echo 
echo -e $red"{$blue 9$red }$blue Scan UFO Ports "
echo 
echo -e $red"{$blue 10$red }$blue Detect OS And Service"
echo 
echo -e $red"{$blue 11$red }$red Standard Service Detecting"
echo 
echo -e $red"{$blue 12$red }$red Detect More Aggressive Services"
echo 
echo -e $red"{$blue 13$red }$red Light Banner Grabbing Detection"
echo 
echo -e $red"{$blue 14$red }$red Scan Using Default Safe Scripts"
echo 
echo -e $red"{$blue 15$red }$red Get Help For a Script"
echo 
echo -e $red"{$blue 16$red }$red Scan Using a Specific NSE Scripts"
echo 
echo -e $red"{$blue 17$red }$red Scan With a Set Of Scripts"
echo 
echo -e $red"{$blue 18$red }$red Scan For DDOS Reflectors"
echo 
echo -e $red"{$blue 19$red }$red Gather Page Titles From HTTPS Services"
echo 
echo -e $red"{$blue 20$red }$red Gather Headers Of Web Services"
echo 
echo -e $red"{$blue 21$red }$green Finding Apps From Known Paths"
echo 
echo -e $red"{$blue 22$red }$green HEARTBLEED Testing"
echo 
echo -e $red"{$blue 23$red }$green Perform a RPC Scan"
echo 
echo -e $red"{$blue 24$red }$green Scan IP With a Given Range"
echo 
echo -e $red"{$blue 25$red }$green Check Firewall "

echo 

echo -e $red"{$blue 26$red }$green Gather Info Of Remote Sys"

echo 

echo -e $red"{$blue 27$red }$green Show Reason For The Open Port There"

echo 

echo -e $red"{$blue 28$red }$green scan a Specified Port "

echo

echo -e $red"{$blue 29$red }$green Scan Specified Ports"

echo

echo -e $red"{$blue 30$red }$green Check Vulnerability"

echo

echo -e $red"{$blue 0$red }$cyan EXIT"

echo

echo

echo

read -p "Select an option :" ipp

read -p "Enter site or its ip  :" ip

if [ $ipp = 1 ] 

then

echo -e $yellow"Scanning ports"

nmap $ip


echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 2 ] 

then

echo -e $yellow"Displaying only open ports"

echo -e $cyan"loading.......... "

nmap -open $ip


echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 3 ] 

then

echo -e $yellow"Scanning a subnet"

nmap $ip/24


echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

echo

if [ $ipp = 4 ] 

then

echo -e $yellow"Scanning a range of ports"

nmap -p 1-100 $ip


echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 5 ] 

then

echo -e $yellow"Scanning 100 most common ports"

nmap -F $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 6 ] 

then

echo -e $yellow"Scanning all 65535 ports"

nmap -p- $ip


echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 7 ] 

then

echo -e $yellow"Scanning using TCP connect"

nmap -sT $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 8 ] 

then

echo -e $yellow"Scanning using TCP SYN scan"

nmap -sS $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 9 ] 

then

echo -e $yellow"Scanning UDP ports"

nmap -sU -p 123,161,162 $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 10 ] 

then

echo -e $yellow"Detecting OS and Service"

nmap -A $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 11 ] 

then

echo -e $yellow"Standard service detecting"

nmap -sV $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 12 ] 

then

echo -e $yellow"Detecting more aggressive service"
nmap -sV --version-intensity 5 $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 13 ] 

then

echo -e $yellow"Light banner grabbing detection running"

nmap -sV --version-intensity 0  $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 14 ] 

then

echo -e $yellow"Scanning using default safe scripts"

nmap -sV -sC $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 15 ] 

then

echo -e $yellow"Getting help for a script"

nmap --script-help=ssl-heartbleed 

sleep 2

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 16 ] 

then

echo -e $yellow"Scanning using a specific NSE script"

nmap -sV -p 443 –script=ssl-heartbleed.nse $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 17 ] 

then

echo -e $yellow"Scanning with a set of scripts"

nmap -sV --script=smb* $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 18 ] 

then

echo -e $yellow"Scanning for UDP DDOS reflectors"

nmap –sU –A –PN –n –pU:19,53,123,161 –script=ntp-monlist,dns-recursion,snmp-sysdescr $ip/24

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 19 ] 

then

echo -e $yellow"Gathering page titles from HTTPS services"

nmap --script=http-title $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 20 ] 

then

echo -e $yellow"Getting HTTP headers of Web services"

nmap --script=http-headers $ip/24
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 21 ] 

then

echo -e $yellow"Finding web apps from known paths"

nmap  --script=http-enum $ip/24
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 22 ] 

then

echo -e $yellow"Testing Heatbleed"

nmap -sV -p 443 --script=ssl-heartbleed $ip/24 

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 23 ] 

then

echo -e $yellow"Performing a RPC scan"

nmap -sR $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 24 ] 

then

read -p $red "Enter the range for scanning" r


echo -e $yellow"Scanning ip with given range"

nmap $ip-$r
echo -e $blue"press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 25 ] 

then

echo -e $yellow"checking firewall"

nmap -PN $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 26 ] 

then

echo -e $yellow"Gathering info of remote sys"

nmap -v -A $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 27 ] 

then

echo -e $yellow"showing reason"

nmap --reason $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 28 ] 

then

read -p $cyan"enter port : $p "

echo -e $yellow"Scanning specified port"

nmap -p $p $ip

echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi

echo

if [ $ipp = 29 ] 

then

read -p $cyan"enter port 1 : $g "

read -p $cyan"enter port 2 : $k "

echo -e $yellow"Scanning specified ports"

nmap -p $g,$k $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi 

echo

if [ $ipp = 30 ] 

then

echo -e $yellow"Checking vuln"
nmap --script dos -Pn $ip
echo -e $blue
read -p "press enter to go back" enter

bash nmapper.sh

fi
echo 

if [ $ipp = 0 ] 

then

clear

echo


                                                                 

  







  
                     

              




echo

exit

else

bash nmapper.sh
