#!/bin/bash 

clear
echo 

if [ $# -ne 3 ];then 
	echo "debe introducir tres parámetros."
else 
	echo "los parametros introducidos son: $* "
	echo 
	echo "creando carpeta con parámetro $1"
	mkdir $1
	sleep 2
	echo "carpeta creada."

	echo 
	echo "creando fichero $2 dentro de carpeta $1"
	touch $1/$2 
	sleep 2
	echo "el fichero se ha creado."
	echo 
	echo -n "pulsa intro para continuar: " 
	sleep $3
	read 
fi 
echo 
