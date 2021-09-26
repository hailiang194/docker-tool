#!/bin/bash

# This script is gonna list all the Docker container ID

sudo docker ps | awk '{print $1}' | while read line 
do
  if [[ $line = "CONTAINER" ]]
  then
    continue
  fi
  echo $line
done
