.Const

.Data?

.Data
edad DWord 13H
mayor Byte "Si pasa", 0
menor Byte "No pasa", 0
titulo Byte "Resultado", 0
adios Byte "Adios", 0
include ECProtos.inc ; .Code

start:
	Mov Eax, edad
	Cmp Eax, 12H
	Jl exe
	Invoke MessageBox, 0, Addr mayor, Addr titulo, MB_OK
	Jmp salida
exe:
	Invoke MessageBox, 0, Addr menor, Addr titulo, MB_OK
salida:
	Invoke MessageBox, 0, Addr adios, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start