#!/bin/bash
file="./up_res.txt"
if [ -f "$file" ]
then
	> ./up_res.txt
fi

docker-compose build
docker-compose up >> ./up_res.txt
echo d_up_window_exit >> ./up_res.txt