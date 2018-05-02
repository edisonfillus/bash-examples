#!/bin/bash

for pc in $(seq 1 100); do
    echo -ne "\r\033[0K${pc}%" # Move cursor to end of line
    #echo -ne "$pc%\033[0K\r"   # Move cursor to start of line
    # Clean the line in echo: \033[0K

    sleep 1
done
echo

# Variation
pc=1
while [ ${pc} -lt 100 ]; do
    pc=$[ pc + 1 ]
    echo ${pc}%
    sleep 1
    tput cuu1
    tput el
done
echo
