#!/bin/bash

# Remove all Docker containers

./all_container.sh | while read container
do
  echo "Removing container " $container "..."
  sudo docker rm -f $container
  echo $container " has been removed"
done
