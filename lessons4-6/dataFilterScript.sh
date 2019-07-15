#!/bin/bash
echo
echo
echo "Atv 1 computer info:"
 uname -a | cut -d " " -f2,3,9 |tr " " "\n"


