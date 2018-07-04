#!/bin/bash

clear
echo 

echo -n "introduce el nombre de un usuario: "
read nom
echo 

echo "la carpeta personal del usuario $nom contiene: "
echo 
ls -l /home/$nom
echo 

interprete=`cat /etc/passwd| grep $nom| cut -f 7 -d ":"`
echo "el interprete de comandos que usa el usuario $nom es: "$interprete
echo 
