clear
echo "Press 'y' and enter if any permission asks for downloading resources"
echo
echo "Installing requirements"
echo
echo "It may take some time please don't close session and turn off Internet" 
echo
pkg install python > /dev/null 2>&1
pkg install hydra > /dev/null 2>&1
pkg install nmap > /dev/null 2>&1
pkg install git > /dev/null 2>&1
pkg install python2 > /dev/null 2>&1
pkg install toilet > /dev/null 2>&1

pkg install espeak > /dev/null 2>&1
git clone https://github.com/s0md3v/XSStrike.git;cd XSStrike;pip install -r requirements.txt > /dev/null 2>&1



cp -r ~/Blackpearl-framework/pass1.txt ~/Blackpearl-framework/lib/
cp -r ~/Blackpearl-framework/pass2.txt ~/Blackpearl-framework/lib/
cp -r ~/Blackpearl-framework/pass3.txt ~/Blackpearl-framework/lib/
cp -r pearl /data/data/com.termux/files/usr/bin/
chmod +x /data/data/com.termux/files/usr/bin/pearl


pip install pytube > /dev/null 2>&1

pip install requests > /dev/null 2>&1
echo
echo "Requirements Satisfied"
cd

