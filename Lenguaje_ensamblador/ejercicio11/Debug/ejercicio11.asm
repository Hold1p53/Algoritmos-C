.Const

.Data?
totaltexto Byte 5 sup(?)
.Data
costo DWord 0AH
titulosi Byte "Si hay descuento", 0
titulono Byte "No hay descuento", 0
vuelva Byte "Vuelva pronto", 0
total DWord 0H
include ECProtos.inc ; .Code

start:
	Mov Eax, costo
	IMul Eax, 4H
	Cmp Eax, 3CH
	Jl sipirili
	Sub Eax, 10
	Mov total, Eax
	Invoke dwtoa, total, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, Addr titulosi, MB_OK

	Jmp salida

sipirili:
	Mov total, Eax
	Invoke dwtoa, total, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, Addr titulono, MB_OK
salida:
	Invoke MessageBox, 0, Addr vuelva, Addr vuelva, MB_OK
	Invoke ExitProcess, 0
End start
