@echo off
title Ordenar vector

setlocal ENABLEEXTENSIONS 
setlocal ENABLEDELAYEDEXPANSION

::Comprobaci¢n de argumentos
if "%2"=="" (
	echo Sintaxis: ORDENAR elemento elemento... 
	exit /B 1
)
::Mensaje previo
cls
echo Vector de entrada: %*
echo.

::Captura de elementos
set n=0
for %%e in (%*) do (
	set v[!n!]=%%e
	set /a n=!n!+1
)

::Algoritmo de la burbuja
set /a lim_i=n-1
set /a lim_j=n-2
for /l %%i in (1, 1, %lim_i%) do (
	for /l %%j in (0, 1, %lim_j%) do (
		::Llamamos k al indice j+1, para poder trabajar con ‚l
		set /a k=%%j+1
		::Este "for" es necesario ya que no podemos trabajar directamente con j
		for %%k in (!k!) do ( 
			if /i !v[%%j]! GTR !v[%%k]! (
				set aux=!v[%%j]!
				set v[%%j]=!v[%%k]!
				set v[%%k]=!aux!
			)
		)
	)	
)	

::Mostrar resultado
for /l %%o in (0, 1, %lim_i%) do (
	set ordenado=!ordenado! !v[%%o]!
)
echo Vector ordenado:%ordenado%

endlocal

exit /b 0
