#!/bin/bash
#ricardo ribeiro e daniel tavares, 23/09, v1.0


#top -b  | sed -n '8,18p'

MEMTOT=$(echo $(cat /proc/meminfo | grep MemTotal |cut -d ' ' -f9)) #pega memoria total

TopProcess(){
	   ps -e -o pmem,comm | sort -n -r -k 3,3 | head -n 11 | tail -n +2 #Busca os 10 processos que mais consomem
}



SaveProcess() { 
	topProcess=`TopProcess`
	echo "$topProcess" |while read -r line; do #le as linhas dos processos que mais consomem
		#echo $(($MEMTOT*$(echo $line |cut -d' ' -f1)))
		Process=$(echo $line |cut -d' ' -f2) #pega o nome do processo
		MEMPROCESS=$(echo $line |cut -d' ' -f1) #pega a memoria do processo
		result=$(bc -l <<<"${MEMPROCESS}*${MEMTOT}*0.01/1024") #resultado da memoria gasta
		Formatado=$(echo "$(date +'%Y-%m-%d'), $(date +'%T'), ${result%.*} MB") #texto para inserir formatado
		echo $Formatado
		#echo $MEMTOT
		#echo $MEMTOT
		#echo $MEMPROCESS
		#echo $Process
		echo $Formatado  >> logs/$Process.log #insere no log
	done
}

mkdir -p logs #cria pasta log caso nao exista

SaveProcess #chama a função 
#$(($MEMTOT*$MEMPROCESS ) |bc)
