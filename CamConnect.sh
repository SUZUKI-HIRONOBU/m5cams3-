#!/bin/bash

PIPEF=/tmp/ppp

if [ -p $PIPEF ] ; then
    echo  $PIPEF ' found and remove it.'
    /bin/rm $PIPEF

fi

mkfifo $PIPEF

while true
do
    echo -n 'Connect...'
    wget -O $PIPEF http://192.168.4.1/api/v1/stream
    echo 'Disconnect (Try to connect again)'
    sleep 1
    echo ''
done

