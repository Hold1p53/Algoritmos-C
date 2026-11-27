.Const

.Data?
resultadotexto Byte 5 sup(?)
.Data
a DWord 2H
;a es igual a 2
b DWord 2H
;b es igual a 2
cc DWord 6H
;c es igual a 6
d DWord 9H
;d es igual a 9
resultado DWord 0H
titulo Byte "Resultado", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, a
	IMul Eax, b
	Add Eax, cc
	Sub Eax, d
	Mov resultado, Eax
	Invoke dwtoa, resultado, Addr resultadotexto
	Invoke MessageBox, 0, Addr resultadotexto, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start