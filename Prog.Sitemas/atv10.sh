#!/bin/bash -xv

NOME="Ricardo"

echo "$NOME"

echo -e "\e[31mDigite um número qualquer:"
read numero;
echo -e "\e[32mdigite outro numero"
read numero2;
echo "$numero e $numero2"
if [ $numero -lt $numero2 ]
then
  echo "a>b"
elif  [ $numero -gt $numero2 ]
then
 echo "b>a"
else
 echo "b=a"
fi

touch arq.txt
echo "Digite o texto a ser buscado: "
#cat >>arq.txt
read text
echo $(cat arq.txt | grep $text )

