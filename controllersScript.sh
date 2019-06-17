
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
