cd
SQLMAP=$(find sqlmap)
C='\033[1;34m'
echo "$C"
figlet -f smslant "          Install"
if [ -z "$SQLMAP" ];then
   echo '          O sqlmap não está instalado...'
   echo '             Deseja instala-lo agora?'
   echo '             ~~~~~~~{Y} or {N}~~~~~~~'
   read SQL
    if [ "$SQL" = "Y" -o "$SQL" = "y" ];then
       echo ' Instalando Sqlmap...'
       cd
       git clone https://github.com/sqlmapproject/sqlmap
    else
       echo ' Tudo bem!, Saindo...'
       sleep 3
       exit
    fi
       echo '         Tudo ok!, Deseja iniciar o script?'
       echo '             ~~~~~~~{Y} or {N}~~~~~~~'
       read SCRIPT
        if [ "$SCRIPT" = "Y" -o "$SCRIPT" = "y" ];then
           cd SqlAuto && python SqlAuto.py
	else
           echo 'Ok!, Saindo...'
           sleep 3
	   exit
	fi
else
    echo '      O sqlmap está devidamente instalado...'
    echo
fi
