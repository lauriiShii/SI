#!/bin/bash

## Calcula el volumen de la esfera
clear ## limpia todo lo que hubiera en la consola

PI=3.1415 ##variable

echo ## como el sysout
echo -n "Introduzca  el radio de la esfera; read num"
##el -n es para que se situe el cursor en la misma linea

resultaso=`echo "scale=2; (4/3*$PI*$num^3)/1" | bc -l`
echo "El volumen de la esfera es: $resultado"
## sclae muestra dos decimales, siempre hay que dividirlo por 1 sino no sale y hay que poner el ; sino no compila
echo
echo
exit 0