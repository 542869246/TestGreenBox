#!/bin/bash
#
# @Description : GreenBox
#
# @Date        : 2019-06-12 11:15
# @Author      : Jade
#
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
export PATH

if [ ! $1 ]; then  
   echo 'ERROR: Need to apply loop param'    
   exit  
fi  
echo $2
timedatectl set-time "$2"
for i in $(seq 1 $1)
do 
#   time=`date +'%G-%m-%d %H:%M:%S' -d '-1 days'`
#   timedatectl set-time "$time"
   /bin/bash ./initx.sh
done

#git push
