#!/bin/bash 

clear 
echo 

if [ $# -eq 0 ];then 
  echo "Error! no se han introducido parámetros."

else 

somos=`who>som`

for i in $*; do 
  al=`grep $i som 2>errores`

if [ $? -eq 0 ]; then 
 	echo "$i existe."
  else 
 	echo "$i no existe."
fi
done
fi 
echo 
