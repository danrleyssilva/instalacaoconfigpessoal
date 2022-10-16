#!/bin/bash
# Program name: pingall.sh
date
cat  /home/dan/Archives/list.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is Alive" 
    else
    echo "node $output is Dead"
    fi
done
