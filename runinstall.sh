r='\e[1;31m'
cat << EOF
EOF
spinner=('Installing iNstalling inStalling insTalling instAlling inst>

count(){
  spin &
  pid=$!

  for i in `seq 1 10`
  do
    sleep 2;
  done

  kill $pid
}

spin(){
  while [ 1 ]
  do
    for i in ${spinner[@]};
    do
      echo -ne "\r $i ";
      sleep 0.1;
    done;
  done
}

count
echo -e $r"\n ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
