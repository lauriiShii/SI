
::TITULO DEL PROGRAMA

title= ANALIZADOR DE EQUIPOS REMOTOS EN RED


::INTRODUCCION DEL PROGRAMA

:: escribimos @echo off para que no se muestren todos los comandos por pantalla
@echo off
::informamamos de lo que vamos a hacer en este programa
echo Analizador de equipos remotos en red. Pulsa una tecla para continuar.
:: tenemos que pulsar cualquier tecla para continuar
pause>nul 


::INTRODUCIMOS DIRECCION IP

echo Introduce la direccion IP
set /p IP=
::dividimos l direccion ip en 4 trozos a traves de un for
:: nota: he procurado usar la explicacion dada en clase la cual no se si he comprendido, soy consciente de que si planteo el for asi estoy ejecutando lo que hay dentro todo una vez por cada vuelta y es absurdo ya que se ejecuta 4 veces lo mismo pero no he encontrado otra forma.
for /f "tokens=1-4 delims=." %%a in ("%IP%") do (
	set /a IP1=%%a
	set /a IP2=%%b
	set /a IP3=%%c
	set /a IP4=%%d
	)
	
::INTRODUCIMOS MASCARA DE RED

echo Introduce la mascara de red
set /p MR=
:: dividimos la mascara de red en 4 trozos como la ip
for /f "tokens=1-4 delims=." %%a in ("%MR%") do (
	set /a MR1=%%a
	set /a MR2=%%b
	set /a MR3=%%c
	set /a MR4=%%d
	)


::CALCULAMOS EL TIPO DE RED	

echo Calculando tipo de red....
:: lo que dice que tipo de red es son las 3 primeras cifras que encuentras en la direccion ip=ip1... solo hay que calcular si es menor a esos numeros
if "%IP1%" LEQ "127" (echo La red es Tipo A) else (
if "%IP1%" LEQ "191" (echo "La red es de Tipo B") else (
if "%IP1%" LEQ "223" (echo "La red es de Tipo C") else (
if "%IP1%" LEQ "239" (echo "La red es de Tipo D") else (
if "%IP1%" LEQ "255" (echo "La red es de Tipo E")))))
if "%IP1%" GEQ "255" (echo ERROR)
:: tenemos que pulsar una tecla para continuar
echo Pulsa una tecla para continuar
pause>nul


::CALCULAMOS LA DIRECCION DE RED

echo Calculando direccion de red...
::para calcular la direccion de red lo que hacemos es coger los grupos de la mascara de red descartando los 0 dejando solo los 1, con esto sabemos los numeros que coogemos de la i en orden para construir la direccion de red
::lo que hacemos es coger los 1 de la mascara de red y en la posicion de esos 1 ponemos los numeros correspondientes de la mascara de red.
set /a DR1="IP1&MR1"
set /a DR2="IP2&MR2"
set /a DR3="IP3&MR3"
set /a DR4="IP4&MR4"
:: mostramos la direccion de red
echo La direccion de red es %DR1%.%DR2%.%DR3%.%DR4%
:: pulsamos cualquier tecla para continuar
echo Pulsa una tecla para continuar
pause>nul


:: CALCULAMOS EL NUMERO DE HOST

echo Calculando numero de host...
::para eso hacemos lo mismo que antes para calcular la direccion de red pero alreves
set /a DH1="IP1&~MR1"
set /a DH2="IP2&~MR2"
set /a DH3="IP3&~MR3"
set /a DH4="IP4&~MR4"
:: mosramos el numero host
echo El numero de host es %DH1%.%DH2%.%DH3%.%DH4%
:: pulsamos cualquier tecla para continuar
echo Pulsa una tecla para continuar
pause>nul


:: CALCULAMOS LA DIRECCION DE BROADCAST

echo Calculando direccion de broadcast...
:: con la mascara y direccion de red tenemos que hacer una XOR ( or exclusivo si coincide 1 1 da 0, solo da uno con 1 y 0 o 0 y 1 )
:: una broadcast es una xor entre la direccion de red y la mascara de red ( es lo que ponia en varias paginas de internet...)
set /a DB1="DR1|(255^MR1)"
set /a DB2="DR2|(255^MR2)"
set /a DB3="DR3|(255^MR3)"
set /a DB4="DR4|(255^MR4)
:: mostramos la direccion de broadcast
echo La direccion de broadcast es %DB1%.%DB2%.%DB3%.%DB4%


::FIN DEL PROGRAMA
pause>nul
exit /B 0

