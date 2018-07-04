#!/bin/bash 

clear
echo 

echo -n "introduce el nombre de una persona: "; read nom 
echo 

busca=`grep -i $nom agenda.txt`

if [ $? -eq 0 ];then 
	$busca|cut -f2 -d " " 
	echo "se ha encontrado la persona, esa persona vive en " 
else 
	echo "no se ha encontrado la persona."
fi 
echo 
