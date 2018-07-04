:: comenzamos poniendo @echo off para que no sea un "loro"
@echo off

::informamos al usuario de detalles
echo en este programa vamos a calcular la distancia de frenado de un veiculo, para ello introduce las variables.
echo procure introducir numeros pares para que el resultado sea un numero entero y no de fallo.

::introduccion de variables
set/p t0=tiempo de reaccion:
set/p v0=velocidad inicial:
set/p a= desaceleracion:
set/p t=tiempo de frenado:
set s

::operacion
set/a s = %t0% + %v0% * %t% + (1/2) * ( -%a% ) * ( %t% * %t% )

::mostramos resultado
echo la distancia de frenado es: %s% metros

::fin del programa
pause
exit