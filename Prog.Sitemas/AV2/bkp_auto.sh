#!/bin/bash

#Adiciona a job automaticamente. Caso já tenha, remove e adiciona dnv
crontab -l | grep -v 'bkp_auto.sh' |crontab -
crontab -l > mycron
echo "0 19 * * 5 bkp_auto.sh" >> mycron
crontab mycron
rm mycron



