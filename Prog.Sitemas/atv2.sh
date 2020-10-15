#!/bin/bash
#mem
echo $(cat /proc/meminfo |grep MemTotal)
#users
echo $(who)

#data e hora
echo $(date)
#ping
ping -c 3 www.senaicimatec.com.br
