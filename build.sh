#!/bin/sh

status=0

# build
echo -------- building --------
docker build -t nullreference/python35gcp .;
status=$(($status|$?))

if [ ${status} -ne 0 ]; then echo "build failed" && exit ${status}; fi

# push
echo -------- pushing --------
docker push nullreference/python35gcp