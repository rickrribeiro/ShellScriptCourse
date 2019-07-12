#!/bin/bash
echo
echo
echo "Atv 1 computer info:"
 uname -a | cut -d " " -f2,3,9 |tr " " "\n"

echo
echo
echo "atv 2 IP:"
ifconfig |grep "inet" | grep "Bcast" | cut -d " " -f12 

echo
echo
