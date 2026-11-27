.Const

.Data?
resultadotexto Byte 5 Dup(?)
.Data
numuno DWord 0AH
numos DWord 0FH
resultado DWord 0
include ECProtos.inc ; .Code

start:
Mov Eax, numuno
Add Eax, numos
Mov resultado, Eax
Invoke dwtoa, resultado, Addr resultadotexto
Invoke MessageBox, 0, Addr resultadotexto, NULL, MB_OK
Invoke ExitProcess, 0
End start
