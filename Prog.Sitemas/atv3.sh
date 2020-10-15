#!/bin/bash
echo "Digite s ou n"
read imp
if [ $imp == "s" ]
then
    echo "S"
elif [ $imp == "n" ]
then
    echo "N"
else
	echo "Opcao invalida"
fi
#su root -c cat $(/var/log/auth.log)
df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
echo $(users)
