.Const

.Data?

.Data
nombre Byte "Hola Pedro", 0
titulo Byte "Saludo", 0
include ECProtos.inc ; .Code

start:
Invoke MessageBox, 0, Addr nombre, Addr titulo, MB_OK
Invoke ExitProcess, 0
End start
