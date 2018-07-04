#!/bin/bash

clear
echo

#Comprobación y captura del archivo junto a los demas parametros
if (($#<1)); then
	echo "SINTAXIS: ruta_archivo nombre valor"
	exit 1
fi
if [ $# -eq 0 ]; then
	archivo=`basename $1`
	ruta=`dirname $1`
	nombreBus=$1
	valorBus=$2
	suma=0	

	#Recorrer el archivo
	while read linea; do
		#Extraemos el nombre
		nombre=`echo $linea | cut -f1 -d ","`
		#Extraemos valor y sumamos
		valor=`echo $linea | cut -d -f$valor -d","`
		let suma=$suma+$valor

		#Comprobamos que el nombre que buscamos coincide con alguno existente y lo mostramos junto a la suma del valor
		if (($nombre==$nombreBus)); then
			echo El nombre es $nombre. La suma de la columna introducida para este es: $suma
			echo
			exit 0
		fi
	done  < $ruta/$archivo

	#Mensaje final
	echo El nombre $nombreBus no existe
else
	echo "error! debe introducir 3 parámetro (ruta_archivo/nombre/valor)" 
	echo
	exit 1

fi
echo
exit 0




