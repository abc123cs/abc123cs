#!/bin/sh
i=1
while [ $i -le 50 ]
do
  if id "stud${i}" >/dev/null 2>&1; then	  
      userdel -r "stud${i}"
      echo "Deleted user stud${i}."
  else 
      echo "User stud${i} doesn't exist. Skipping deletion."
  fi
  i=$(($i+1 ))
done
