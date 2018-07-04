#!/bin/bash

clear
echo 

if [ $# -lt 2 ]; then 
	echo "Debe introducir dos parámetros."
else 
	if [ -f $1 ] && [ $2 -ge 1 ] && [ $2 -le 5 ]; then  
		
		echo "mostrando contenido..."
		sleep 2 
		
		a=0 
		while [ $a -lt $2 ]; do 
			cat $1
			let a=$a+1
			echo ---------------------------------------------------------------------
		done  
	else
		echo "Debe introducir un fichero, y un numero entre 1 y 5"
	fi 
fi 
