.Const

.Data?
resultadotexto Byte 5 sup(?)
.Data
base DWord 3H
altura DWord 4H
resultado DWord 0
titulo Byte "Resultado", 0
include ECProtos.inc ; .Code

start:
;asignamos la base a ebx
	Mov Ebx, base
;le añadimos la altura
	Add Ebx, altura
;el resultado lo guardamos en eax
	Mov Eax, Ebx
;le asignamos 2 a ebx
	Mov Ebx, 2
;multiplicamos 2 por el valor guardado de eax
	IMul Ebx, Eax
;movemos el resultado a la variable
	Mov resultado, Ebx
;convertimos el resultado a texto
	Invoke dwtoa, resultado, Addr resultadotexto
;hacemos una ventana para mostrar el resultado
	Invoke MessageBox, 0, Addr resultadotexto, Addr titulo, MB_OK
	Invoke ExitProcess, 0

End start