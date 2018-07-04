#!/bin/bash 

clear 
echo 

if [ $# -eq 0 ];then 
  echo "no se han introducido parámetros."

else
  if [ -f $1 ]; then 

	echo "renombrar [r/R]"
	echo "buscar [b/B]"
	echo "copiar [c/C]"
	echo "mover [m/M]"
	echo 
	echo "¿Qué quieres hacer con el fichero?"
	read ope 
	echo 
		
		case $ope in 
			r|R) echo -n "introduce el nuevo nombre del fichero: "
			     read nom
			     mv $1 $nom 
			     ;;

			b|B) find $1 
			     ;; 

			c|C) echo -n "introduce el nombre de la copia: "
			     read cop
			     cp $1 $cop
			     ;;
			m|M) echo "introduce la ruta de destino: "
			     read ruta
			     mv $1 $ruta 
		esac 
	else 
		echo "No se ha encontrado el fichero"
  fi 
fi 
echo 
