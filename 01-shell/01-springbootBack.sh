#!/bin/sh

user=readonlyroot
password=movcEzxGhehVZHmK

rootPath=/home/sqlback/02-mysql/
curDate=`date +%Y%m%d`
curFileName=${rootPath}dump-${curDate}.sql
delDate=`date -d "3 days ago" +%Y%m%d`
delFileName=${rootPath}dump-${delDate}.sql

curTime=`date +%F%T`
echo -e "执行删除: [$curTime]\n"
rm -r $delFileName

mysqldump --user $user --password=$password --all-databases > $curFileName
curTime=`date +%F%T`
echo -e "备份完毕：[$curTime]\n"
