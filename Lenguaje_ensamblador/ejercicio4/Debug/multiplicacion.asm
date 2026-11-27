.Const

.Data?
resultadotexto Byte 5 sup(?)

.Data
operador DWord 0AH
resultado DWord 0H
titulo Byte "Resultado", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, 2
	IMul Eax, operador
	Mov resultado, Eax
	Invoke dwtoa, resultado, Addr resultadotexto
	Invoke MessageBox, 0, Addr resultadotexto, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start
