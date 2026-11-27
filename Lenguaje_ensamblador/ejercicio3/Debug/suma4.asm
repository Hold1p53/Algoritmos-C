.Const

.Data?

resultadotexto Byte 5 Dup(?)
.Data

numuno DWord 0AH
numos DWord 0FH
numes DWord 0BH
numatro DWord 0CH

resultado DWord 0H
titulo Byte "Resultado", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, numuno

	Add Eax, numos
	Add Eax, numes
	Add Eax, numatro

	Mov resultado, Eax
	Invoke dwtoa, resultado, Addr resultadotexto
	
	Invoke MessageBox, 0, Addr resultadotexto, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start
