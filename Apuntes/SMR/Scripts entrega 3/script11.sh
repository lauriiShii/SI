#!/bin/bash 

clear 
echo 

if [ $# -eq 0 ]; then 
  echo "No ha introducido ningún parámetro."

else
  echo "Creando directorio..."
  sleep 2 
  mkdir $1
  find $1
  echo 
	  if [ $? -ne 0 ];then 
		echo "No se ha creado."
	  else 
		echo "Directorio creado."
	  fi  
  echo 
  echo "Copiando archivos y directorios del directorio home a $1"
  usu=`whoami`
  cp /home/$usu/* $1  2>errores
  sleep 2
  echo 

  	for i in `ls $1` ;do 
	  if [ -r $i ]; then 
		  echo "$i el fichero tiene permiso de lectura."
          else 
		  echo "$i No tiene permiso de lectura."
	  fi 
	done
fi 
echo 
