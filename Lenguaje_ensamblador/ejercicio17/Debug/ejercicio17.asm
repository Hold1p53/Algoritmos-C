.Const

.Data?
temperaturatexto Byte 5 sup(?)
.Data
temp_subida DWord 0H
hilo1 DWord 19H
hilo2 DWord 19H
hilo3 DWord 19H
hilo4 DWord 19H
temperatura DWord 0H
limite DWord 50H
peligro Byte "Peligro: refrigeracion liquida al maximo", 0
seguro Byte "Temperatura dentro del rango seguro", 0
final Byte "Lectura del socket finalizada", 0
titulo Byte "resultado", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, temp_subida
	Add Eax, hilo1
	Add Eax, hilo2
	Add Eax, hilo3
	Add Eax, hilo4
	Cmp Eax, limite
	Jg refrigeracion
	Mov temperatura, Eax
	Invoke dwtoa, temperatura, Addr temperaturatexto
	Invoke MessageBox, 0, Addr temperaturatexto, Addr seguro, MB_OK
	Jmp salida
refrigeracion:
	Sub Eax, 0EH
	Mov temperatura, Eax
	Invoke dwtoa, temperatura, Addr temperaturatexto
	Invoke MessageBox, 0, Addr temperaturatexto, Addr peligro, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start