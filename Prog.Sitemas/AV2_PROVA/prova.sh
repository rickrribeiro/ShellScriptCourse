#!/bin/bash

#q1
free | grep -i mem | awk '{print $3}'


#q2
echo $(date +%F)

#q5
grep "^.[a]" /etc/passwd

