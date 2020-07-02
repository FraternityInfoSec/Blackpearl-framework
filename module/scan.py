#!/bin/env python
import os,sys
from pearl import sql
print()
os.system("cd $HOME/sqlmap")
i = input("Enter website : ")
os.system("cd ~/sqlmap")
os.system("python sqlmap.py -u" + i + '%27')
sql()
	
