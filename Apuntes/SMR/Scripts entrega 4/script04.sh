#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
  echo "no se han introducido parámetros, introduzca al menos 1". 

else 
  echo "los archivos recibidos son: $*"
  echo 

  for a in $* ; do 
	if [ -f $a ]; then 
	  echo "el fichero $a existe"
	  echo
	  echo "espere, mostrando contenido de $a:"
	  echo 
	  sleep 4
	  more $a
 	  echo 
	  echo -n "pulse intro para continuar: "
	  read 
	  echo 

	else 
	  echo "el fichero $a no existe"
	
	fi 
  done 
fi 
echo 
echo 
