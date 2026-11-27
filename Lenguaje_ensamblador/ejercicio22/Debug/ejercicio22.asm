.Const

.Data?

.Data
creditos1 DWord 1EH
creditos2 DWord 0AH
creditos3 DWord 2H
total DWord 0H
minimo DWord 2DH
habilitado Byte "Habilitado para tramite de servicio social", 0
pendientes Byte "Creditos pendientes para liberacion", 0
final Byte "Consulta de expediente concluida", 0
titulo Byte "notificacion", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, total
	Add Eax, creditos1
	Add Eax, creditos2
	Add Eax, creditos3
	Cmp Eax, minimo
	Jge mayor
	Invoke MessageBox, 0, Addr pendientes, Addr titulo, MB_OK
	Jmp salida
mayor:
	Invoke MessageBox, 0, Addr habilitado, Addr titulo, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start