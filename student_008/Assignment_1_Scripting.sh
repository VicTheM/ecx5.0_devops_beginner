#!/bin/bash

if [ $# -lt 3 ]; then
	echo "Error: At least 3 arguments required."
	exit 1
fi

mkdir $1
touch $1/$2
echo $3 >> $1/$2
