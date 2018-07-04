#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
  echo "no ha introducido ningún parámetro, introduzca un parámetro con el nombre del directorio a buscar."

else 
  echo "el nombre del directorio a buscar es: $1"
  echo 
  sleep 1

  if [ -d $1 ]; then 
	echo "el directorio "$1" si existe."
	echo 
	
	echo "espere mientras se muestra el contenido del directorio..."
	sleep 2 
	echo 
	
	for var in `ls -lR`; do 
		if [ -d $var ]; then 
			nombre=`ls -lR $var | grep "^d" | cut -f 9 -d " "`
		fi 
	done 
  else 
	echo "el directorio "$1" no existe."
  fi 	
fi 
echo 


