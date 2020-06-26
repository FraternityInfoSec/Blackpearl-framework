clear
echo "Installing requirements"
pkg install python
pkg install git
pkg install python2
pkg install toilet
pkg install figlet
sleep 2
pkg upgrade
pkg update
sleep 2
cp -r pearl /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/pearl
chmod +x ~/Blackpearl-framework/lib/hydra.py
chmod +x ~/Blackpearl-framework/lib/msf.py
chmod +x ~/Blackpearl-framework/lib/sql.py
chmod +x ~/Blackpearl-framework/lib/nmapper.sh
pip install requests
cp -r pearl /data/data/com.termux/files/usr/bin
echo
echo "Requirements Satisfied"

