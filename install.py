#!/bin/env python
import os
import time
print
os.system("chmod +x *")
os.system("cd ~/Blackpearl-framework;bash runinstall.sh")
os.system("cp -r pearl /data/data/com.termux/files/usr/bin/")
os.system("chmod +x /data/data/com.termux/files/usr/bin/pearl")
os.system("chmod +x ~/Blackpearl-framework/lib/hydra.py")
os.system("chmod +x ~/Blackpearl-framework/lib/msf.py")
os.system("chmod +x ~/Blackpearl-framework/lib/sql.py")
os.system("chmod +x ~/Blackpearl-framework/lib/nmapper.sh")
os.system("pip install tqdm")
print()
print("Use this only for educational purpose only , we aren't responsible for any other purposes")
print()
print("Just type pearl in new terminal session ")
print()
print("""
FROM 
 ___  __       ___  ___  __         ___     
|__  |__)  /\   |  |__  |__) |\ | |  |  \ / 
|    |  \ /~~\  |  |___ |  \ | \| |  |   |                                             
""")
