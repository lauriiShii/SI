#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
	echo "no se han introducido parámetros, introduzca uno."
else 
	echo "el parámetro introducido es: $1" 
	echo "creando carpeta con $1"
	sleep 2
	mkdir $1
	echo 
fi
echo 
