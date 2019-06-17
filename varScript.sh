read nome
echo "usa \$  pra ver o valor " 
echo $nome
read -p  "coloca -p para mostrar mensagem ao ler>" nome
echo $nome
read -s -p "coloca -s para ler como senha" nome
echo $nome
read -t 3 -p "-t 3 coloca um timer para caso o usuario nao digite nada. no ex 3 segundos" num
echo $num
echo
echo
echo "$0 $1 $2 $3 OS \$NUM mostra os argumentos"
echo "$* o \$* mostra todos os argumentos"


exit
