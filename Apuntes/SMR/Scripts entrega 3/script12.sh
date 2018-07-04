#!/bin/bash 

clear 
echo 

op=a

while [ $op != x ]; do 

echo -n "introduce el nombre de un fichero: "; read fich 
echo 
echo "##########################################"
if [ -f $fich ];then 

echo "buscar una palabra: -------- b"
echo "contar nº palabras: -------- w"
echo "ordenar contenido:  -------- o"
echo "mostrar paginado:   -------- p"
echo "mostrar inicio:     -------- i"
echo "mostrar final:      -------- f"
echo "imprimirlo:         -------- c"
echo "salir:              -------- x"
echo "##########################################"
echo

echo -n "¿Qué quieres hacer con el fichero? "; read op 
echo 

	case $op in 
		i) head $fich 
			;;
		f) tail $fich 
			;;
		o) sort -k 1 $fich
			;;
		b) echo -n "introduce la palabra que quieres buscar: "
		   read pal 
		   echo 
		   grep $pal $fich 
			;;
		w) palabras=`wc -w $fich|cut -f 1 -d " "`
		   echo "el fichero tiene $palabras palabras."
			;;
		p) less $fich 
			;;
		c) cat $fich 
			;;
		x) echo "saliendo..."
		   sleep 2
		   break
		# El break te saca de la estructura anterior a la que se encuentra. 
			;;
		*) echo "opción incorrecta."
	esac
	echo 
	echo -n "pulsa intro para continuar"; read 
	clear
	echo  

else
  echo "el fichero no existe."
fi 
done
echo 
