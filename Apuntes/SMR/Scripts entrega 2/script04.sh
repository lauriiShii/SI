#!/bin/bash

clear
echo 

usu=`whoami`
if [ root = $usu ]; then 
  echo "el usuario es root"

else
  echo "el usuario no es root"
fi 
echo 

