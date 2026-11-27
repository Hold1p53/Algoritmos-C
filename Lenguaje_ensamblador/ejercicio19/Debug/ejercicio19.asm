.Const

.Data?
totaltexto Byte 5 sup(?)
.Data
total DWord 0H
gasto_sector1 DWord 0AH
gasto_sector2 DWord 0AH
gasto_sector3 DWord 0AH
minimo DWord 1EH
conversion DWord 0H
ef Byte "Consumo eficiente: modo crucero activo", 0
ex Byte "Consumo excesivo: reduciendo potencia de impulso", 0
final Byte "Telemetria transmitida", 0
titulo Byte "mensaje", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, total
	Add Eax, gasto_sector1
	Add Eax, gasto_sector2
	Add Eax, gasto_sector3
	Cmp Eax, minimo
	Jle eficiente
	Sub Eax, 0AH
	Mov conversion, Eax
	Invoke dwtoa, conversion, Addr totaltexto
	Invoke MessageBox, 0, Addr totaltexto, Addr ex, MB_OK
	Jmp salida
eficiente:
	Invoke MessageBox, 0, Addr ef, Addr titulo, MB_OK
salida:
	Invoke MessageBox, 0, Addr final, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start