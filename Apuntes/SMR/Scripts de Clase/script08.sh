#!/bin/bash 

clear
echo 

echo -n "introduce el nombre de un fichero: "; read fich 
echo 

if [ -f $fich ] ; then 
	echo "el fichero $fich existe. Indicando permisos que tiene:"
	sleep 2
	
	if [ -r $fich ];then 
		echo "el fichero tiene permiso de lectura."
	else
		echo "el fichero no tiene permiso de lectura."
	fi 
		
	if [ -w $fich ];then 
		echo "el fichero tiene permiso de escritura."
	else
		echo "el fichero no tiene permiso de escritura."
	fi

	if [ -x $fich ];then 
		echo "el fichero tiene permiso de ejecución."
	else
		echo "el fichero no tiene permiso de ejecución."
	fi 
else
	echo "el fichero no existe."
fi 
echo 
