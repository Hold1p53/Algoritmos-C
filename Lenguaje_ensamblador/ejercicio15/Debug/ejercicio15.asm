.Const

.Data?

.Data
alertas DWord 0
bloque1 DWord 0
bloque2 DWord 0
bloque3 DWord 2
alerta Byte "Alerta: actividad sospechosa detectada", 0
comun Byte "Acesso sin incidentes", 0
titulo Byte "Registro", 0
final Byte "Fin de auditoria"
include ECProtos.inc ; .Code

start:
	Mov Eax, alertas
	Mov Ebx, bloque1
	Add Ebx, bloque2
	Add Ebx, bloque3
	Cmp Ebx, Eax
	Jne suma
	Invoke MessageBox, 0, Addr comun, Addr titulo, MB_OK
	Jmp salida
suma:
	Invoke MessageBox, 0, Addr alerta, Addr titulo, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start
