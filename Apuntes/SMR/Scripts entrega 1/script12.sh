#!/bin/bash

clear
echo 

echo -n "introduce el nombre de un fichero: "
read fich 
echo

cat $fich| sort -k 1
echo 
