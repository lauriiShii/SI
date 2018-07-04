#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
  echo "No has introducido parametros, debe introducir dos."
else

	if [ $1 = $2 ]; then 
	  echo "Son Iguales."
	else 
  	  echo "Son Distintos."
	fi 
fi 
echo 
