cat << EOF
EOF

spinner=('Installing iNstalling inStalling insTalling instAlling instaLling instalLing installIng installiNg installinG Blackpearl bLackpearl blAckpearl blaCkpearl blacKpearl blackPearl blackpEarl blackpeArl blackpeaRl blackpearL') 

count(){
  spin &
  pid=$!
  for i in 'seq 1 10'                                                                   
  do  
      sleep 1;
  done

  kill $pid
}

spin(){
  while [ 1 ]
  do
    for i in ${spinner[@]};
    do
      echo -ne "\r{ $i }";
      sleep 0.1;
    done;
  done
}

count
