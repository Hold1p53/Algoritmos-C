.Const

.Data?
totaltexto Byte 5 sup(?)
.Data
total DWord 0H
totalconversion DWord 0H
dia1 DWord 0FBH
dia2 DWord 0FBH
dia3 DWord 0FBH
dia4 DWord 0H
dia5 DWord 0H
minimo DWord 3E8H
bonificacion DWord 64H
meta Byte "Meta diaria superada con bonus", 0
basico Byte "Objetivo basico alcanzado", 0
final Byte "Sincronizando reloj", 0
titulo Byte "Mensaje", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, total
	Add Eax, dia1
	Add Eax, dia2
	Add Eax, dia3
	Add Eax, dia4
	Add Eax, dia5
	Cmp Eax, minimo
	Jg mayor
	Mov totalconversion, Eax
	Invoke dwtoa, totalconversion, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, Addr basico, MB_OK
	Jmp salida
mayor:
	Add Eax, bonificacion
	Mov totalconversion, Eax
	Invoke dwtoa, totalconversion, Addr totaltexto
	Invoke MessageBox, 0, Addr totalconversion, Addr meta, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start