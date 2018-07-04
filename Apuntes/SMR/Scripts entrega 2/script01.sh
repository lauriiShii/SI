#!/bin/bash

clear
echo 

echo -n "introduce el nombre de un fichero o directorio: "
read nom

echo -n "introduce un número: "
read num 

if [ -d $nom ]; then 
 	echo "listando contenido del directorio..."
	sleep 3
 	ls -l $nom 
fi

if [ -f $nom ]&&[ $num -eq 1 ]; then 
	echo "Mostrando contenido del fichero..."
	sleep 3
	echo 
	cat $nom

  elif [ -f $nom ]&&[ $num -eq 2 ];then
	echo "abriendo editor de texto..."
	sleep 3
	echo 
	gedit $nom

  else 
	echo 
	echo "Error!"
fi
echo 
	
