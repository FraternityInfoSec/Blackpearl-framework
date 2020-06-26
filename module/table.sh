#!/bin/bash
read -p "Enter website :" w
read -p "Enter database :" d
python sqlmap.py -u "$w" --tables -D $d
read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python sql.py
