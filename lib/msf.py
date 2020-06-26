#!/bin/env python
import os
import sys
import time
R = '\033[91m'
G = '\033[92m'
B = '\033[94m'
C = '\033[96m'
W = '\033[97m'
Y = '\033[93m'
M = '\033[95m'
G = '\033[90m'
B = '\033[90m'
D = '\033[99m'
print
print("""
1.nmap \n 2.msf
""")
print("1.Install Metasploit Framework")
print("2.metasploit framework version")
print("3.Windows --> test.exe (payload and listener) ")
print("4.Android --> test.apk (payload and listener)")
print("5.Linux --> test.py (payload and listener)")
print("6.MacOS --> test.jar (payload and listener)")
print("7.Web --> test.php (payload and listener)")
print("8.Scan if a target is vulnerable to ms17_010")
print("9.Exploit Windows 7/2008 x64 ONLY by IP (ms17_010_eternalblue)")
print("10.Exploit Windows with a link (HTA Server)")
print("11.Simple TCP shell for PHP")
print("12.Simple TCP shell for ASP")
print("13.Simple TCP shell for javascript")
print("14.Simple TCP shell for WAR")
print("15.Trojan/backdoor for windows xp/7")
print("16.Harvest emails using msf")
print
print
i = input(G + "msf~>")
if i == '1':
	print("Installing Metasploit Framework")
	os.system("pkg install metasploit")
    	print("Metasploit Framework Installed")
	os.system("cd ~/Blackpearl-framework/lib;python msf.py")
elif i == '2':
	os.system("")
elif i == '3':
	os.system("cd  ~/Blackpearl-framework/module;bash windows.sh")
elif i == '4':
	os.system("cd ~/Blackpearl-framework/module;bash android.sh")
elif i == '5':
	os.system("cd ~/Blackpearl-framework/module;bash python.sh")
elif i == '6':
	os.system("cd ~/Blackpearl-framework/module;bash jar.sh")
elif i == '7':
	os.system("cd ~/Blackpearl-framework/module;bash php.sh")
elif i == '8':
	os.system("cd ~/Blackpearl-framework/module;bash ms17.sh")
elif i == '9':
	os.system("cd ~/Blackpearl-framework/module;smb.bash ")
elif i == '10':
	os.system("cd ~/Blackpearl-framework/module;bash hta.sh")
elif i == '11':
	os.system("cd ~/Blackpearl-framework/module;bash tp.sh")
elif i == '12':
	os.system("cd ~/Blackpearl-framework/module;bash asp.sh")
elif i == '13':
	os.system("cd ~/Blackpearl-framework/module;bash jsp.sh")
elif i == '14':
	os.system("cd ~/Blackpearl-framework/module;bash war.sh")
elif i == '15':
	os.system("cd ~/Blackpearl-framework/module;bash trojan.sh")
elif i == '16':
	os.system("cd ~/Blackpearl-framework/module;bash email.sh")
elif i == 'back':
	os.system("pearl")
else:
        print("Invalid input")
        print("Closing Metasploit Framework Automater console")
        sys.exit(1)

  
