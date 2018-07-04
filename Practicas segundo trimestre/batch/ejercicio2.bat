:: comenzamos poniendo @echo off para que no sea un "loro"
@echo off

::informamos al usuario de detalles
echo en este programa vamos a ordenar una serie de numeros que debes introducir eligiendo si lo deseas de derechas o alreves.

::pedimos numeros y declaramos variables
set orden
set/p a=num1:
set/p b=num2:
set/p c=num3:

:: eleccion de mayor a menos o menor a mayor
echo si desea que que ordene los nuemeros de menos a mayor pulse 1. si desea que ordene los numero de mayor a menos pulse 2.
set/p orden=

::ordenamos y mostramos
if %orden% EQU 1 (
  		if (%a% GEQ %b%) && (%b% GEQ %c%) && (%a% GEQ %c%) ( echo Los números ordenados son: %a%, %b% y %c% )

		else if (%a% GEQ %b%) && (%b% LEQ %c%) && (%a% GEQ %c%) ( echo Los números ordenados son: %a%, %c% y %b%  )

		else if (%a% GEQ %c%) && (%b% GEQ %a%) && (%a% LEQ %b%) ( echo Los números ordenados son: %b%, %a% y %c% )

		else if (%a% LEQ %c%) && (%b% GEQ %c%) && (%a% LEQ %b%) ( echo Los números ordenados son: %b%, %c% y %a% )

		else if (%a% LEQ %b%) && (%b% LEQ %c%) && (%a% LEQ %c%) ( echo Los números ordenados son: %c%, %b% y %a% )

		else if (%a% LEQ %c%) && (%b% LEQ %c%) && (%a% GEQ %b%) ( echo Los números ordenados son: %c%, %a% y %b% )
) else (
  		if (%a% GEQ %b%) && (%b% GEQ %c%) && (%a% GEQ %c%) ( echo Los números ordenados son: %c%, %b% y %a% )

		else if (%a% GEQ %b%) && (%b% LEQ %c%) && (%a% GEQ %c%) ( echo Los números ordenados son: %b%, %c% y %a% )

		else if (%a% GEQ %c%) && (%b% GEQ %a%) && (%a% LEQ %b%) ( echo Los números ordenados son: %c%, %a% y %a% )

		else if (%a% LEQ %c%) && (%b% GEQ %c%) && (%a% LEQ %b%) ( echo Los números ordenados son: %a%, %c% y %b% )

		else if (%a% LEQ %b%) && (%b% LEQ %c%) && (%a% LEQ %c%) ( echo Los números ordenados son: %a%, %b% y %c% )

		else if (%a% LEQ %c%) && (%b% LEQ %c%) && (%a% GEQ %b%) ( echo Los números ordenados son: %b%, %a% y %c% )
)
::fin del programa
pause
exit