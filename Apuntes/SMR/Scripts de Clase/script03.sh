#!/bin/bash 

clear
echo 

if [ $# -ne 2 ];then 
	echo "no ha introducido dos parámetros, introduzcalos."
else 
	echo "los parametros introducidos son: $*"
	echo 
	let suma=$1+$2
	echo "la suma de los parametros es: $suma"
fi 
echo 
