#!/bin/bash

clear
echo 

echo -n "introduce el nombre de un fichero: "; read nom 
echo 

if [ -f $nom ];then 
	echo "el fichero $nom existe."
else
	echo "el fichero $nom no existe."
fi
echo 
