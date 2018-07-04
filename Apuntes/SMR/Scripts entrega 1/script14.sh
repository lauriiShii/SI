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
