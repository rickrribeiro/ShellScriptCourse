
#!/bin/bash

echo "Digite um número qualquer:"
read numero;
echo "digite outro numero"
read numero2;
echo "$numero e $numero2"
if [ $numero -le $numero2 ]
then
  echo "a>b"
else
 echo "b>a"
fi
echo "-eq -le -lt -gt -ge"


case $numero in
	1) echo "1" ;;
	2) echo "2" ;;
	3) echo "3" ;;
	"a") echo "a";;
	*) echo "não é 1, 2 ou 3" ;;
esac	
echo
echo "test  x==n e armazena na var ?"
test 1 == 1
echo $?
test 1 == 0
echo $?

echo
echo "for e sequencia"
for a in $(seq 10);
do
echo $a;
done


while
