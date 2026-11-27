.Const

.Data?
totaltexto Byte 5 sup(?)
.Data
total DWord 0H
conversion DWord 0H
enemigo1 DWord 0AH
enemigo2 DWord 14H
enemigo3 DWord 1EH
enemigo4 DWord 3CH
minimo DWord 78H
subir Byte "subiste de nivel!", 0
insuficiente Byte "Puntos acumulados: nivel insuficiente", 0
final Byte "Guardando progreso del juego", 0
titulo Byte "notificacion", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, total
	Add Eax, enemigo1
	Add Eax, enemigo2
	Add Eax, enemigo3
	Add Eax, enemigo4
	Cmp Eax, minimo
	Jge mayor
	Mov conversion, Eax
	Invoke dwtoa, conversion, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, insuficiente, MB_OK
	Jmp salida
mayor:
	Invoke MessageBox, 0, Addr subir, titulo, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start