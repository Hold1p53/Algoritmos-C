.Const

.Data?
totatexto Byte 5, sup(?)
.Data
dano_req DWord 32H
total DWord 0H
estado Byte "Estado de combate actualizado", 0
intacta Byte "Armadura intacta", 0
final Byte "final", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, 10
	Add Eax, 8
	Add Eax, 30
	Cmp Eax, dano_req
	Jl menor

	Mov Ebx, Eax
	Sub Ebx, 0AH
	Mov total, Ebx
	Invoke dwtoa, total, Addr totatexto
	Invoke MessageBox, 0, Addr totatexto, Addr final, MB_OK
	Jmp salida
menor:
	Invoke MessageBox, 0, Addr intacta, Addr final, MB_OK

salida:
	Invoke MessageBox, 0, Addr estado, Addr final, MB_OK
	Invoke ExitProcess, 0
End start
