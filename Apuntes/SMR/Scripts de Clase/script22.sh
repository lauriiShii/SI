#!/bin/bash

clear
echo 

if [ $# -eq 0 ]; then 
	echo "Error, debe introducir parametros."

else
	echo "Se han introducido los suiguientes parametros: $*"
	echo 
	
	echo -n "introduce el nombre de un directorio: "; read direc
	echo 
		for var in $* ; do 
	
			if [ -f $direc/$var ]; then 
				echo "el fichero $var si existe."
			else
				echo "el fichero $var no existe."
			fi 
		done 
fi 
echo 
