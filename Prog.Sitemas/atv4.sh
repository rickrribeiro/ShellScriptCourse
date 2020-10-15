#!/bin/bash

echo "Digite a quantidade de horas: "
read qt

if [ $qt -le 30 ]
then
	echo "Gratis"
elif [ $qt -le 60 ]
then 
	echo "5"
	
else
	echo "10"

fi
