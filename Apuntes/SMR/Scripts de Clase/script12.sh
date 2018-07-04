#!/bin/bash

clear
echo 

if [ $# -lt 2 ]; then 
	echo "error! debes introducir dos parametros."
else 
	echo "los parametros introducidos son: $* "
	echo 

	if [ -d $1 ]; then 
		echo "el directorio $1 ya existe."
	else 
		echo "el directorio $1 no existe, creandolo..."
		sleep 2
		mkdir $1 
	fi 

	if [ -f $1/$2 ];then 
		echo "el fichero $2 existe dentro del directorio $1"
	else 
		echo "el fichero $2 no existe dentro del directorio $1"
		echo "creandolo..."
		sleep 2
		touch $1/$2 
fi 
echo 
