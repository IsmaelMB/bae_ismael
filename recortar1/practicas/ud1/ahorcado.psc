Funcion LeerSecreto(secreto Por Referencia, aciertos Por Referencia)
	Definir i Como Entero;
	Repetir
		Escribir "Introduce la palabra a adivinar: ";
		Leer secreto;
		Si Longitud(secreto)>20 Entonces
			Escribir "No puede tener mas de 20 caracteres.";
		FinSi
	Hasta Que Longitud(secreto)<=20
	Para i <- 1 Hasta 19 Hacer
		aciertos[i] <- Falso;
	FinPara
FinFuncion

Funcion num <- NumeroAciertos(aciertos)
	Definir num Como Entero;
	Definir i Como Entero;
	num <- 0;
	Para i<-1 Hasta 19 Hacer
		Si aciertos[i] Entonces
			num <- num+1;
		FinSi
	FinPara
FinFuncion

Funcion EscribirSecreto(secreto,aciertos)
	Definir i Como Entero;
	Para i<-1 Hasta Longitud(secreto) Hacer
		Si aciertos[i] Entonces
			Escribir Sin Saltar Subcadena(secreto,i,i) ;
		SiNo
			Escribir Sin Saltar "*";
		FinSi
	FinPara
	Escribir "";
FinFuncion

Funcion acierto <- ComprobarSecreto(letra,secreto,aciertos Por Referencia)
	
	Definir i Como Entero;
	Definir acierto Como Logico;
	acierto <- Falso;
	Para i<-1 Hasta Longitud(secreto) Hacer
		Si Subcadena(secreto,i,i)=letra Entonces
			aciertos[i] <- Verdadero;
			acierto <- Verdadero;
		FinSi
	FinPara
	Escribir "";
FinFuncion

Funcion LeerLetra(letra Por Referencia,letras Por Referencia)
	Repetir
		Escribir Sin Saltar "Introduce una Letra: ";
		Leer letra;
		Si Longitud(letra) <> 1 Entonces
			Escribir "UNA SOLA LETRA!!";
		FinSi
	Hasta Que Longitud(letra)=1;
	letras <- Concatenar(letras,Concatenar(letra,' '));
FinFuncion

Funcion MostrarAhorcado(fallos)
	Escribir "";
	Escribir "LA HORCA!!";
	Escribir "";
	Segun fallos  Hacer
		0:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
		1:
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "";
			Escribir "___________";
		2:
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "___________";
		3:
			Escribir "|------";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "|";
			Escribir "___________";
		4:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|";
			Escribir "|";
			Escribir "___________";
		5:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|";
			Escribir "|";
			Escribir "___________";
		6:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|\" ;
			Escribir "|";
			Escribir "___________";
		7:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|\";
			Escribir "|    / ";
			Escribir "___________";
		8:
			Escribir "|------";
			Escribir "|     |";
			Escribir "|     0";
			Escribir "|    /|\";
			Escribir "|    / \";
			Escribir "___________";
	FinSegun
	Escribir "";
FinFuncion

Proceso Ahorcado
	
	Definir secreto Como Caracter;
	Definir letras Como Caracter;
	Definir letra Como Caracter;
	Definir aciertos Como Logico;
	Definir num_fallos Como Entero;
	Dimension aciertos[20];
	
	letras <- "";
	
	num_fallos <- 0;
	
	LeerSecreto(secreto,aciertos);
	
	Repetir
		Borrar Pantalla;
		EscribirSecreto(secreto,aciertos);
		MostrarAhorcado(num_fallos);
		Escribir "Letras introducidas: ",letras;
		LeerLetra(letra,letras);
		Si  NO ComprobarSecreto(letra,secreto,aciertos) Entonces
			num_fallos <- num_fallos+1;
		FinSi
	Hasta Que NumeroAciertos(aciertos)=Longitud(secreto) O num_fallos=8;
	
	Si num_fallos=8 Entonces
		Borrar Pantalla;
		EscribirSecreto(secreto,aciertos);
		MostrarAhorcado(num_fallos);
		Escribir "GAME OVER";
	SiNo
		Escribir "YOU WIN";
	FinSi
	
FinProceso