!/bin/bash
#Ricardo Ribeiro V 1.0

dialog --yesno ' Deseja realizar a extração dos dados?' 0 0 ;a=$?

if [ $a -eq 0 ]
then
	


arquivo="Acoes.txt"
verde="\033[32;1m"
verde="\033[31;1m"
[ ! -x "{$which lynx}" ] && sudo apt install lynx -y && clear
lynx -source https://www.infomoney.com.br/cotacoes/empresas-b3 |grep '<a href="https://www.infomoney.com.br/cotacoes/' |sed 's/<a.*">//;s/<li.*li>//;s/<li.*a>//;s/<.*>//' > Acoes.txt

while read -r acoes
do
echo -e "${vermelho}Acoes: ${verde}$acoes"
done < "$arquivo"
tar -czvf titulos.tar.gz Acoes.txt

fi
