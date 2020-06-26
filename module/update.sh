#!/bin/bash

clear

echo "Removing old version..."

echo

sleep 3

ls

rm -rf Blackpearl-framework

rm -rf /data/data/com.termux/files/usr/bin/pearl

echo

sleep 2

echo "Updating to new version"

sleep 2

git clone https://github.com/ProfessorCipher/Blackpearl-framework-.git

clear

echo "Removed older version and installed new version" 
