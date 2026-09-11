//Elaborar un algoritmo que permita convertir grados fahrenheit a celsius y viceversa.
#include<stdio.h>
int main(){
	
	int celsius;
	int farenheit;
	printf("%s", "Ingresa los grados celsius: ");
	scanf("%d", &celsius);
	farenheit=(celsius*1.8)+32;
	printf("El valor ingresado fue: %d", celsius);
	printf("La conversion da: %d", farenheit);
	
	int celsius2;
	int farenheit2;
	
	printf("%s", "Ingresa los grados farenheit");
	scanf("%d", &farenheit2);
	celsius2=(farenheit2-32)/1.8;
	printf("El valor ingresado fue: %d", farenheit2);
	printf("La conversion da: %f", celsius2);
	return 0;
}
/*Este algoritmo primero define las variables de celsius, luego muestra un mensaje al usuario de necesitar los datos de los grados celsius
luego le asigna a la variable celsius el dato numerico que ingrese el usuario y realiza la formula de los grados fahrenheit
despues, muestra el valor que el usuario ingreso y la conversion a fahrenheit. luego comienza el segundo algoritmo para la conversion
en este caso yo defini nuevas variables de celsius y fahrenheit debido a problemas tecnicos que sufri durante la escritura de este algoritmo
basicamente realiza todo el proceso otra vez pero ahora pidiendo grados fahrenheit y conviertiendolos a celsius*/