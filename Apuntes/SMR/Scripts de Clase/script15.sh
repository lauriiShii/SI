#!/bin/bash

clear
echo 

if [ $# -eq 0 ];then 
	echo "error, no se ha introducido ningún parámetro."
else 
	for var in $* ; do 
		echo "creando directorio $var."
		sleep 2
		mkdir $var 
		echo -----------------------------
	done 
fi 
echo 
