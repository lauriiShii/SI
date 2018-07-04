#!/bin/bash 

clear
echo 

echo -n "introduce el nombre de un fichero: "
read fich 
echo 

echo -n "introduce la cadena de carácteres o el carácter que quieres buscar: "
read cad
echo 

lineas=`grep -c $cad $fich`
echo "la cadena de caracteres aparece en $lineas lineas."
echo 
