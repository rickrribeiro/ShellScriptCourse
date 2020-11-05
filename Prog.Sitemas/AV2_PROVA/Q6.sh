#!/bin/bash

for i in $(cat usuários.txt);do
	echo "Adicionando o usuário $i"
	sudo useradd  $i
	echo $i |sudo passwd -e $i
done
