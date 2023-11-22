#!/bin/sh
i=1
groupadd class1
while [ $i -le 30 ]
do
     if [ $i -le 9 ]; then
	 username=stud0${i}
     else
	 username=stud${i} 
     fi
     useradd $username
     mkdir /home/$username
     chown $username:$username /home/$username
     chgrp class1 /home/$username
     i=$(($i+1))
done
