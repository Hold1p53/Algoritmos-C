.Const

.Data?
voltatexto Byte 5 sup(?)
.Data
muestra DWord 31H
voltajetotal DWord 0H
voltaje DWord 0H
voltajereq DWord 0C8H
default Byte "Registro guardado en memoria", 0
bien Byte "Voltaje optimo: balance de energia correcto", 0
mal Byte "Voltaje fuera de norma", 0
registro Byte "Registro", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, voltaje
	Mov Ebx, muestra
	IMul Ebx, 4
	Add Eax, Ebx
	Cmp Eax, voltajereq
	Je optimo
	Mov voltajetotal, Eax
	Invoke dwtoa, voltajetotal, Addr voltatexto
	Invoke MessageBox, 0, Addr voltatexto, Addr mal, MB_OK
	Jmp salida
optimo:
	Invoke MessageBox, 0, Addr bien, Addr registro, MB_OK

salida:
	Invoke MessageBox, 0, Addr default, Addr registro, MB_OK
	Invoke ExitProcess, 0
End start