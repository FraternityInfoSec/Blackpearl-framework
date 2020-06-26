#!/bin/bash
read -p "Enter the website :" w
echo -e "Starting attack" 
python sqlmap.py -u "$w" --dbs
read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python sql.py
