#!/bin/bash

echo -e "\033[33mStart SpringBoot Application(qiaobo)...\033[0m"

APP_NAME="campus-market-1.0-SNAPSHOT.jar"
java -Xms1024m -Xmx1024m -jar $APP_NAME > log.file 2>&1 &
pid=`ps -ef | grep $APP_NAME | grep -v grep | awk '{print $2}'`
echo $pid