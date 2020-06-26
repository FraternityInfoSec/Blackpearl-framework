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
pip install requests
cp -r pearl /data/data/com.termux/files/usr/bin
echo
echo "Requirements Satisfied"

