#!/bin/bash
#ricardo ribeiro, 24/09, v1.0


#top -b  | sed -n '8,18p'



UsersLogados(){
	   who
}



MemoriaTotal() { 
	echo "Memoria total: "
	MEMTOT=$(echo $(cat /proc/meminfo | grep MemTotal |cut -d ' ' -f9)) #pega memoria total
	echo $MEMTOT
}


echo "Users Logados: "
UsersLogados

echo "=========================="
MemoriaTotal

echo "=========================="
	echo "Informações HD:"
	echo $(lshw -C disk)
echo "=========================="
	echo "Frequencia CPU:"
	echo $(lshw -c CPU |grep capacity) #É a frequencia total ou atual? se for atual, o grep é por "size"
	
echo "=========================="
	echo "Diretorios no /:"
	for file in /*/
	do
	  echo "${file///}"
	done
	
echo "=========================="
echo "bkp no etc:"
sudo touch /etc/bkp

echo "=========================="
echo "syslogs no bkp"
sudo cp /var/log/syslog.log  /etc/bkp

echo "=========================="
echo "Atualizar SO: "
AV1=$(sudo apt-get update && sudo apt-get dist-upgrade -y && sudo apt-get clean && sudo apt-get autoremove -y)
echo $AV1
#Não rodei a $AV1 pq to com um problema de I/O Package Manager que não consegui resolver e vou ter que tirar e colocar dnv o SO, logo, se eu rodar o SO vai travar 
