#!/bin/bash

clear
echo 

echo -n "introduce el nombre de un usuario: "; read usu
echo 

var=`grep $usu /etc/passwd`

if [ -n $var ];then 
	if [ -d /home/$usu ];then 
		echo "el usuario tiene carpeta personal."
	else 
		echo "el usuario no tiene carpeta personal." 
		echo "creando carpeta personal de $usu..." 
		sleep 2
		sudo mkdir /home/$usu
	fi 
		
	echo 
	echo "Creando archivo $usu en /home/$usu..."
	sleep 2
	touch /home/$usu/$usu
	grep $usu /etc/passwd>/home/$usu/$usu
	echo "fichero creado."
	
else 
	echo "el usuario no existe."
fi 
