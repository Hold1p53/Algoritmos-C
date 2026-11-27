.Const

.Data?
	resultadotexto Byte 5 sup(?)
.Data
	canta DWord 4H
	precioa DWord 19H
	cantb DWord 2H
	preciob DWord 3CH
	cantc DWord 5H
	precioc DWord 0FH
	resultado DWord 0
	titulo Byte "Total", 0
include ECProtos.inc ; .Code

start:
;limpiar el acumulador
	Mov Ebx, 0
;realizar la mutliplicacion A
	Mov Eax, canta
	IMul Eax, precioa
;agregar resultado a acunmulador Ebx
	Add Ebx, Eax
;realizar la multiplicacion B
	Mov Eax, cantb
	IMul Eax, preciob
;agregar resultado a acummulador Ebx
	Add Ebx, Eax
;realizar la multiplicacion C
	Mov Eax, cantc
	IMul Eax, precioc
;agregar resultado a acumulador Ebx
	Add Ebx, Eax
;mover resultado final a variable resultado
	Mov resultado, Ebx
;convertir el resultado a texto con dwtoa
	Invoke dwtoa, resultado, Addr resultadotexto
;hacer un messagebox para mostrar el resultado
	Invoke MessageBox, 0, Addr resultadotexto, Addr titulo, MB_OK
	Invoke ExitProcess, 0
End start
