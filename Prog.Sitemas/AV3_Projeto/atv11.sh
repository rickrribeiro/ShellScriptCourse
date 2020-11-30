#!/bin/bash
#Ricardo Ribeiro e Daniel tavares, V 1.0



arquivo="titulos.txt"
verde="\033[32;1m"
verde="\033[31;1m"
[ ! -x "{$which lynx}" ] && sudo apt install lynx -y && clear
lynx -source http://lxer.com |grep blurb |sed 's/<div.*line">//;s/<\/span.*//' > titulos.txt

while read -r titulo_lxer
do
echo -e " ${vermelho}Titulos: ${verde}$titulo_lxer"
done < "$arquivo"
