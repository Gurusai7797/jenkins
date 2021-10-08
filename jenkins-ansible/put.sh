#!/bin/bash

cou=0

while [ $cou -lt 50 ]; do 
  let cou++
 
  n=$(nl people.txt | grep -w $cou | awk '{print $2}' | awk -F ',' '{print$1}')
  ln=$(nl people.txt | grep -w $cou | awk '{print $2}' | awk -F ',' '{print$2}')
  age=$(shuf -i 20-30 -n 1)

  mysql -u root -p2123 people -e "insert into reg values ($cou, '$n', '$ln', $age)"
  echo "$cou,$n,$ln,$age"

done  

