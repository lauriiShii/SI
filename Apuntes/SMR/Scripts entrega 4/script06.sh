#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
  echo "no ha introducido ningún parámetro, introduzca un parámetro con el nombre del directorio a buscar."

else 
  echo "el nombre del fichero a buscar es: $1"
  echo 
  sleep 1

  if [ -f $1 ]; then 
	echo "el directorio "$1" si existe."
	echo 
	
	echo "dando permisos de ejecución a propietario y grupo, espere.."
	sleep 2	
	chmod ug+x $1
	echo 
	
	ls -l $1 
  else 
	echo "el fichero "$1" no existe."
  fi 	
fi 
echo 


