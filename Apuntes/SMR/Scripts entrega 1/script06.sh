#!/bin/bash

clear
echo 

echo -n "introduce el nombre de un fichero: "
read fich 
echo

lineas=`wc -l $fich| cut -f 1 -d " "`
palabras=`wc -w $fich| cut -f 1 -d " "`
caracteres=`wc -m $fich| cut -f 1 -d " "`

echo "el número de lineas es "$lineas
echo "el número de palabras es "$palabras
echo "el número de carácteres es "$caracteres
echo 
