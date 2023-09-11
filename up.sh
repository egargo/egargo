#!/usr/bin/env bash


git pull origin master

days=("" "月" "火" "水" "木" "金" "土" "日")
weekday="${days[$(date +"%u")]}"
date=$(date +"%B %d, %Y (%a)| %H:%M")
date_jp=$(date +"%Y年%m月%d日 ($weekday)| %H:%M")

sed -i "6c Date: $date_jp" TEST.md

git add README.md
git commit -S -m "[AUTOMATED] Updated Date"
git push origin master
