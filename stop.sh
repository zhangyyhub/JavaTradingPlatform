#!/bin/bash

APP_NAME="campus-market-1.0-SNAPSHOT.jar"
echo -e "\033[33mStop SpringBoot Application(qiaobo)...\033[0m"
pid=`ps -ef | grep $APP_NAME | grep -v grep | awk '{print $2}'`
echo $pid
if [ -n "$pid" ]
then
kill -9 $pid
fi
