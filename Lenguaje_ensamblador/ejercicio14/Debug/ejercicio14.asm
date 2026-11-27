.Const

.Data?
totaltexto Byte 5 sup(?)
.Data
persona1 DWord 46H
persona2 DWord 46H
persona3 DWord 46H
total DWord 0H
requerido DWord 0D2H
titulono Byte "Carga estandar de operacion", 0
textosi Byte "Carga de calibracion exacta detectada", 0
titulosi Byte "Resultado", 0
final Byte "Puertas cerrandose", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, persona1
	Add Eax, persona2
	Add Eax, persona3
	Cmp Eax, requerido
	Je sipi
	Mov Ebx, Eax
	Mov total, Ebx
	Invoke dwtoa, total, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, Addr titulono, MB_OK
	Jmp salida
sipi:
	Invoke MessageBox, 0, Addr textosi, Addr titulosi, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulosi, MB_OK
	Invoke ExitProcess, 0
End start