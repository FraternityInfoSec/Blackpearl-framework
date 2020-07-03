#!/bin/env python
import os
import time
print
os.system("chmod +x *")
os.system("cd ~/Blackpearl-framework;bash runinstall.sh")
os.system("cp -r ~/Blackpearl-framework/pass1.txt $HOME")
os.system("cp -r ~/Blackpearl-framework/pass2.txt $HOME")
os.system("cp -r ~/Blackpearl-framework/pass3.txt $HOME")
os.system("cp -r pearl /data/data/com.termux/files/usr/bin/")
os.system("cp -r ~/Blackpearl-framework/run  /data/data/com.termux/files/usr/bin/")
print()
print("BLACKPEARL FRAMEWORK INSTALLED SUCCESSFULLY")
print() 
print("Use this only for educational purpose only , we aren't responsible for any other purposes")
print()
os.system("cd $HOME") 
print("Just type pearl in new terminal session ")
print()
print("""
FROM THE
 ___  __       ___  ___  __         ___     
|__  |__)  /\   |  |__  |__) |\ | |  |  \ / 
|    |  \ /~~\  |  |___ |  \ | \| |  |   |                                             
""")
