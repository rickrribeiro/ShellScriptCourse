!/bin/bash
#Ricardo Ribeiro V 1.0

dialog --yesno 'Bem vindo ao SalveMinhaQuarentena! Deseja realizar a extração dos dados?' 0 0 ;a=$?

if [ $a -eq 0 ]
then
	


arquivo="titulos.txt"
verde="\033[32;1m"
verde="\033[31;1m"
[ ! -x "{$which lynx}" ] && sudo apt install lynx -y && clear
lynx -source http://xvideos.com |grep 'id="video_' |sed 's/<div.*class="title">//;s/class="name".*div>//;s/<a.*title="//;s/">.*><span//' > titulos.txt

while read -r titulos_xv
do
echo -e "${vermelho}Titulos: ${verde}$titulos_xv"
done < "$arquivo"
tar -czvf titulos.tar.gz titulos.txt

fi
