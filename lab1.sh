#!/bin/bash
n=$1
ps -u 1000 -o pid,user,stime,rss \
  | awk -v N="$n" '{if($4 < N){ print $0 }}' \
  | sort -n -k 4,4
