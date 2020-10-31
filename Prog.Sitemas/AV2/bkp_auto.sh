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

cp backup/webcimatec.log "backup/backup_$(date +'%Y-%m-%d')_$(date +'%T').log"
tar -czvf backup/log.tar.gz backup/webcimatec.log
#aws s3 cp log.tar.gz s3://rickrribeiro/

