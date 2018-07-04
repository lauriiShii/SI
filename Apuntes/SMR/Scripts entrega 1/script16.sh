#!/bin/bash

clear
echo 

echo -n "introduce un nombre: "
read nom 

apellido=`grep $nom nombres| cut -f 2 -d " "`
echo "el apellido es: "$apellido
echo

