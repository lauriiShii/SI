#!/bin/bash

#contar palabras
#------------------

#Datos de entrada
if (($#>=2)); then
	palabra=$1
	archivo=$1
else
	echo "Sintaxis: $0 <palabra> <ruta>"
	exit 1
fi

#Comprobar archivo
if [ ! -f $archivo ]; then
	echo "La ruta especificada no existe o no es un archivo regular"
	exit 2
fi

#Recorrer el archivo linea por linea
contador=0
while read line
do
	#Extraer palabras
	for i in $linea #El for recorre una cadena de caracteres y predeterminadamente por espacios.
	do	
		#Comprobar palabra
		if [ "$1" = "$palabra" ]; then
			let contador++
		fi
	done
done < $archivo #Esto es una redireccion para que lea linea tras linea

#Mensaje final
echo "La palabra '$palabra' aparece $contador veces en 'archico'"

exit1
