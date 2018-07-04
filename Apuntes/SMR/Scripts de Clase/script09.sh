#!/bin/bash 

clear
echo 

if [ $# -eq 0 ];then 
	echo "error, debe introducir un parámetro."
else 
	if [ -d $1 ];then 
		echo "el directorio $1 existe."
	else 
		echo "el directorio $1 no existe. Creandolo..." 
		mkdir $1
		sleep 2
		echo "Directorio $1 creado."
	fi
fi
echo 
