#!/bin/sh

i=0
while [ $i -lt 55 ]; do
  i=$(($i+1))
  name=$(nl people.txt  | grep -w $i | awk '{ print $2 }' | awk -F ',' '{print $1}')
  surname=$(nl people.txt  | grep -w $i | awk '{ print $2 }' | awk -F ',' '{print $2}')
  age=$(shuf -i 20-45 -n 1)
  echo "$i $name  $surname $age"
  mysql -u root -h db-host -ppass123 talantdb -e  "insert into info values ($i, '$name', '$surname', $age) " 
done
