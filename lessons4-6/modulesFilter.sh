#!/bin/bash

names=$(cat /proc/modules |cut -d " " -f1 )
echo "$names"
endere=$(tac /proc/modules |cut -d " " -f6 |grep 0x)
echo "$endere"
