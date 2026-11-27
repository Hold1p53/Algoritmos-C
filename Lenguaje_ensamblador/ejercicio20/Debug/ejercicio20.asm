.Const

.Data?
totaltexto Byte 5 sup(?)
.Data
total DWord 0H
conversion DWord 0H
tam_paquete1 DWord 10H
tam_paquete2 DWord 10H
tam_paquete3 DWord 10H
tam_paquete4 DWord 11H
minimo DWord 40H
seguro Byte "Buffer seguro: listo para procesar", 0
riesgo Byte "Riesgo de desbordamiento. descartando paquete", 0
final Byte "Canal libre", 0
titulo Byte "mensaje", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, total
	Add Eax, tam_paquete1
	Add Eax, tam_paquete2
	Add Eax, tam_paquete3
	Add Eax, tam_paquete4
	Cmp Eax, minimo
	Jle menor
	Sub Eax, 10H
	Mov conversion, Eax
	Invoke dwtoa, conversion, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, Addr riesgo, MB_OK
	Jmp salida
menor:
	Invoke MessageBox, 0, Addr seguro, Addr titulo, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start