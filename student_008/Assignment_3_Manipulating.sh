#!/bin/bash

if [ $# -lt 3 ]; then
	echo "USAGE: ./filename path file text"
	exit 0
fi

cat $1/$2 | grep $3
