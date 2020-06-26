#!/bin/env python                                            import os,sys
import time                                                     
print("""
""")
print("1.Download Sqlmap")
print("2.Scan a website to to find if it is vulnerable to sql")
print("3.Get Databases of website")
print("4.Find tables in a particular database of the website")
print("5.Get columns of a table in database")
print("6.Get data from the table")
print("7.WAF bypass")
print()
print("All websites vulnerable to sql injection can't be penetrated")
print()
i = input("sql~>")
if i == '1':
	os.system("cd /data/data/com.termux/files/home && git clone https://github.com/sqlmapproject/sqlmap.git")
	print("Sqlmap Successfully Installed")
elif i == '2':
	os.system("cd module;bash scan.sh")
elif i == '3':
	os.system("cd module;bash db.sh")
elif i == '4':
	os.system("cd module;bash table.sh")
elif i == '5':
	os.system("cd module;bash column.sh")
elif i == '6':
	os.system("cd module;bash dump.sh")
elif i == '7':
	os.system("cd module;bash waf.sh")
elif i == 'help':
	print("This is an sqmap automater .You can use this for testing your own websites. \n DISCLAIMER :This is for educational purpose only. we are not part of any illegal activities")
elif i == 'back':
	os.system("cd ~/Blackpearl-framework;bash pearl.sh")
else:
	print("Invalid inputs")
	print("Sqlmap Automater closing")
	os.system("~/Blackpearl-framework;bash pearl.sh")