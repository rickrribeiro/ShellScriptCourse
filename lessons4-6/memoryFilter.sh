#!/bin/bash
total=$(sudo cat /proc/meminfo |grep Mem |head -n 2 |cut -d ":" -f2 |tr -d " "|tr -d "[a-zA-Z]" |head -n 1)
echo "Total: $total"
free=$(sudo cat /proc/meminfo |grep Mem |head -n 2 |cut -d ":" -f2 |tr -d " "|tr -d "[a-zA-Z]" |tail -n 1)
echo "Free: $free"
avaiable=$(($total - $free))
echo "Avaiable: $avaiable"
