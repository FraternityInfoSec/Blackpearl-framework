clear
echo "Press 'y' and enter if any permission asks for downloading resources"
echo
echo "Installing requirements"
pkg install python
pkg install hydra 
pkg install nmap
pkg install git
pkg install python2
pkg install toilet
pkg install figlet
sleep 2
pkg upgrade
pkg update
sleep 2
cp -r ~/Blackpearl-framework/pass1.txt ~/Blackpearl-framework/lib/
cp -r ~/Blackpearl-framework/pass2.txt ~/Blackpearl-framework/lib/
cp -r ~/Blackpearl-framework/pass3.txt ~/Blackpearl-framework/lib/
cp -r pearl /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/pearl
chmod +x ~/Blackpearl-framework/lib/hydra.py
chmod +x ~/Blackpearl-framework/lib/msf.py
chmod +x ~/Blackpearl-framework/lib/sql.py
chmod +x ~/Blackpearl-framework/lib/nmapper.sh
pip install requests
echo
echo "Requirements Satisfied"

