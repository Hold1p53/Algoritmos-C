.Const

.Data?
indicetexto Byte 5 sup(?)
.Data
acel DWord 14H
indice DWord 0H
limite DWord 64H
regular Byte "Regulando el flujo de combustible", 0
estable Byte "Velocidad de crucero estabilizada", 0
final Byte "Ciclo de control completado", 0
titulo Byte "medicion", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, acel
	IMul Eax, 5H
	Mov indice, Eax
	Mov Eax, limite
	Cmp Eax, indice
	Jne diferente
	Invoke dwtoa, indice, Addr indicetexto
	Invoke MessageBox, 0, Addr indicetexto, Addr estable, MB_OK
	Jmp salida
diferente:
	Mov Ebx, indice
	Sub Ebx, 5H
	Mov indice, Ebx
	Invoke dwtoa, indice, Addr indicetexto
	Invoke MessageBox, 0, Addr indicetexto, Addr regular, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start
