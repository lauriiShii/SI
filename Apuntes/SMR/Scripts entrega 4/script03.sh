#!/bin/bash 

clear
echo 

if [ $# -eq 0 ]; then 
  echo "no ha introducido ningún parámetro, introduzca uno."

else 
  if [ -r $1 ]; then 
	echo "el fichero es legible."
  fi 

  if [ -w $1 ]; then 
	echo "el fichero es modificable."
  fi 
 
  if [ -x $1 ]; then 
	echo "el fichero es ejecutable."
  fi 
fi
echo 
