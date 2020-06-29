#!/bin/bash
read -p "Enter website : " w
echo -e "Starting scanning"
python sqlmap.py -u $w"

read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python sql.py
