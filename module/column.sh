#!/bin/bash
read -p "Enter website :" w
read -p "Enter database :" d
read -p "Enter table :" t
python sqlmap.py -u "$w" --columns -D $d -T $t
read -p "Press enter to go back" enter
cd Blackpearl-framework/lib
python sql.py
