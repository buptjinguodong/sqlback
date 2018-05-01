#!/bin/sh

cd /home/sqlback

git add .
curTime=`date +%F%T`
echo -e "开始同步git。Time: $curTime\n"

git commit -m "auto commit. Time: $curTime"
git push -u origin master

curTime=`date +%F%T`
echo -e "同步git结束。Time: $curTime\n"
