#!/bin/bash 

clear
echo
 
if [ $# -eq 0 ];then 
	echo "no se han introducido parámetros, debe introducir dos."

elif [ $# -eq 1 ]; then 
	echo "Solo se ha introducido un parámetro, introduzca dos."

else 
	echo "los parámetros introducidos son: $*"

	if [ -d $1 ] && [ -f $2 ];then 
		echo "copiando fichero $2 en directorio $1"
		sleep 2
		cp $2 $1

		if [ $? -eq 0 ];then 
			echo "la copia se ha realizado"
		fi  
	
	elif [ -d $2 ] && [ -f $1 ];then 
		echo "copiando fichero $1 en directorio $2"
		sleep 2
		cp $1 $2

		if [ $? -eq 0 ];then 
			echo "la copia se ha realizado"
		fi  
	
	elif [ -d $2 ] && [ -d $1 ];then 
		echo "Los dos nombres son directorios."
	
	elif [ -f $2 ] && [ -f $1 ];then 
		echo "Los dos nombres son ficheros."	
	
	else 
		echo "alguno de los ficheros no existe"
	
	fi 
fi 
echo 
