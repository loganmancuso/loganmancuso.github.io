#!/bin/bash


if [ "$#" -ge 1 ]; then
	echo "Illegal Number Of Arguments please use -start/stop"
	exit
fi

if [ $1 = "-start" ]; then
	if [ $2 = "-full" ]; then
		bundle update
	fi
	bundle exec jekyll serve --incremental --watch
elif [ $1 = "-stop" ]; then
	PID=`ps -eaf | grep 'ruby2.5 /usr/local/bin/jekyll serve --incremental' | grep -v grep | awk '{print  $2}'`
	kill -9 $PID
	echo "killing the server"
else 
	echo 'invalid flag, please use -start/stop'
fi
