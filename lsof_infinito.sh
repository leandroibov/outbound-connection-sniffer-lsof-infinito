#!/bin/bash
#use
#touch lsof -i;
#na pasta do usuários
echo "Aperte control + C para parar e veja no arquivo lsof.txt o resultado ou abra e fique recarregando"
sudo rm -rf lsof.txt;
sudo touch lsof.txt;
sudo echo "INÍCIO COLETA lsof e ss em looping" > lsof.txt;
echo >> lsof.txt;
echo >> lsof.txt;


while true
do
echo "INÍCIO #######################################################################################################################################" >> lsof.txt;
date >> lsof.txt;
echo "lsof -i [LSOF COLETA NOVA]" >> lsof.txt;
lsof -i >> lsof.txt;
echo "" >> lsof.txt;

echo "ss -t [TCP COLETA]" >> lsof.txt;
sudo ss -t >> lsof.txt;
echo "" >> lsof.txt;

echo "ss -u [UDP COLETA]" >> lsof.txt;
sudo ss -u >> lsof.txt;
echo "" >> lsof.txt;

echo "ss -s [SUMÁRIO]" >> lsof.txt;
sudo ss -s >> lsof.txt;
echo "" >> lsof.txt;

echo "nmcli connection show [INTERFACES DE REDE EM USO]" >> lsof.txt;
sudo nmcli connection show >> lsof.txt;
echo "" >> lsof.txt;

echo "FIM #######################################################################################################################################" >> lsof.txt;

echo "" >> lsof.txt;
echo "" >> lsof.txt;
echo "" >> lsof.txt;
echo "" >> lsof.txt;
echo "" >> lsof.txt;
echo "" >> lsof.txt;
echo "" >> lsof.txt;





done
