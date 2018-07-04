#!/bin/bash

clear 
echo 

if [ $# -eq 0 ]; then 
echo "no se ha introducido parámetros, debe introducir 1"
else

if [ -d $1 ]; then 
  echo "\$1 es un directorio, su nombre es: $1"
  echo "sus características son: "
  echo 
	sleep 3
  
  	if [ -r $1 ]; then 
		echo "tiene permisos de lectura"
	fi

	if [ -w $1 ]; then
	 	echo "tiene permisos de escritura"
	fi

	if [ -x $1 ]; then 
	  	echo "tiene permisos de ejecución"
 	fi

  elif [ -f $1 ]; then 
    echo "\$1 es un fichero, su nombre es: $1"
    echo "sus características son: "
    echo 
	sleep 3

	if [ -r $1 ]; then 
		echo "tiene permisos de lectura"
	fi

	if [ -w $1 ]; then
		echo "tiene permisos de escritura"
	fi
	
	if [ -x $1 ]; then 
	  	echo "tiene permisos de ejecución"
 	fi

  else
	echo "Error! no existe el fichero o directorio"
fi
fi
echo 
