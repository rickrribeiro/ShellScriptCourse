#!/bin/bash
#Ricardo RIbeiro e Daniel Tavares, v1.0
#wget https://rickrribeiro.s3.amazonaws.com/log.tar.gz     -> pega o ultimo backup, porém os outros também são salvos


#Adiciona a job automaticamente. Caso já tenha, remove e adiciona dnv
crontab -l | grep -v 'bkp_auto.sh' |crontab -
crontab -l > mycron
echo "0 19 * * 5 bkp_auto.sh" >> mycron
crontab mycron
rm mycron


dialog --msgbox 'Backup sendo realizado, verifique os arquivos' 5 40

tail -3 backup/webcimatec.log | grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\ ' >> "backup/backup_$(date +'%Y-%m-%d')_$(date +'%T').log"
tar -czvf backup/log.tar.gz "backup/backup_$(date +'%Y-%m-%d')_$(date +'%T').log"

#aws s3 sync backup/ s3://rickrribeiro/

