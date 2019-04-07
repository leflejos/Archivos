SubProceso eleccionmaquinauno1(textomaqui1 Por Referencia)
	definir maquiazar1 como numerico;
		maquiazar1<-azar(3)
		
		si maquiazar1=0 entonces
			Escribir ' La máquina escogió Papel '
			textomaqui1<-'papel'
		FinSi
		
		si maquiazar1=1 entonces
			Escribir ' La máquina escogió Piedra '
			textomaqui1<-'piedra'
		FinSi
		
		si maquiazar1=2 entonces
			Escribir ' La máquina escogió Tijeras '
			textomaqui1<-'tijeras'
		FinSi
		
	FinSubProceso
	
Proceso pptedos
	
	definir todaslasposi1 como logico;
	definir eleccionvalor1 como numerico;
	definir textoeleccionjuga1 como caracter;
	definir textojugador2 como caracter;
	definir contadorjugvalido1 como numerico;
	definir fueraele1 como numerico;
	
	fueraele1<- 100
	contadorjugvalido1<-0
	todaslasposi1<- FALSO
	
	Escribir ' Bienvenido a piedra, papel o tijeras';
	Escribir ' Por favor, Escribe tu elección en minúsculas ';
	Escribir sin saltar ' piedra, papel o tijeras';
	
	Repetir
		
		leer eleccionjugador1;
		
		si eleccionjugador1=('piedra')
			entonces
			fueraele1<-200
		FinSi
		
		si eleccionjugador1=('papel')
			entonces
			fueraele1<-200
		FinSi
		
		si eleccionjugador1=('tijeras')
			entonces
			fueraele1<-200
		FinSi
		
		si fueraele1=100 entonces
			Escribir ' No has introducido una opción válida. '
			Escribir Sin Saltar ' Por favor inténtalo nuevamente, recuerda usar minúsculas: '
		FinSi
		
	Hasta Que (fueraele1=200)
	//eleccionjugador1='piedra' o eleccionjugador1='piedra' o eleccionjugador1='tijeras' o eleccionjugador1='PIEDRA' o eleccionjugador1='PAPEL' o eleccionjugador1='TIJERAS' o 
	
	si eleccionjugador1='papel' Entonces
		eleccionvalor1<-0
		textojugador2<-'papel'
		Escribir ' Has elegido Papel '
		contadorjugvalido1<-1
	FinSi
	
	si eleccionjugador1='tijeras' Entonces
		eleccionvalor1<-2
		textojugador2<-'tijeras'
		Escribir ' Has elegido Tijeras '
		contadorjugvalido1<-1
		
	FinSi
	
	si eleccionjugador1='piedra' Entonces
		eleccionvalor1<-1
		textojugador2<-'piedra'
		Escribir ' Has elegido Piedra '
		contadorjugvalido1<-1
	FinSi
	
	eleccionmaquinauno1(textomaqui1)
	Escribir sin saltar ' Por favor, presiona ENTER ';
	leer enter1;
	Borrar Pantalla
	Escribir ' -Por favor espera- '
	Esperar 1 segundos
	Borrar Pantalla
	
	si contadorjugvalido1=1 Entonces
		
	Si eleccionvalor1=0 Entonces
			
		Escribir ' La máquina ha elegido ' textomaqui1 ' y tú ' textojugador2 '. '
		
		si textojugador2='papel' Entonces
			
			si textomaqui1='papel' Entonces
				Escribir ' Empate , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
			si textomaqui1='piedra' Entonces
				Escribir ' Victoria , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
			si textomaqui1='tijeras' Entonces
				Escribir ' Pérdida , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
		
		finsi
		
		
		//si textomaqui1='tijeras' Entonces
		//	Escribir ' La máquina ha elegido ' textomaqui1 ' y tú ' eleccionjugador1 '. '
		//finsi
		
		
	FinSi
	
	Si eleccionvalor1=1 Entonces
		
		Escribir ' La máquina ha elegido ' textomaqui1 ' y tú ' textojugador2 '. '
		
		si textojugador2='piedra' Entonces
			
			si textomaqui1='papel' Entonces
				Escribir ' Pérdida , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
			si textomaqui1='piedra' Entonces
				Escribir ' Empate , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
			si textomaqui1='tijeras' Entonces
				Escribir ' Victoria , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
		finsi
	FinSi
	
	Si eleccionvalor1=2 Entonces
	
		Escribir ' La máquina ha elegido ' textomaqui1 ' y tú ' textojugador2 '. '
		
		si textojugador2='tijeras' Entonces
			
			si textomaqui1='papel' Entonces
				Escribir ' Victoria , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
			si textomaqui1='piedra' Entonces
				Escribir ' Pérdida , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
			si textomaqui1='tijeras' Entonces
				Escribir '  Empate , ' textomaqui1 ' de máquina, contra ' textojugador2 ' de jugador. '
			FinSi
			
		finsi
		
	FinSi
	
FinSi
	si contadorjugvalido1=0 Entonces
		Escribir ' No has introducido una opción válida, por favor vuelve a intentarlo. '
	FinSi

FinProceso
