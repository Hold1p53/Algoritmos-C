//Diseñar un algoritmo que lea el nombre de un empleado, su salario basico por hora y el numero de horas trabajadas al dia. Calcular su salario mensual e imprimir tanto el nombre como su salario mensual
#include<stdio.h>
int main(){
	int salariora;
	int horas;
	char nombre[25];
	int mensual;
	printf("%s", "Ingrese su nombre: ");
	scanf("%s", &nombre);
	printf("%s", "Ingrese sus horas al dia: ");
	scanf("%d", &horas);
	printf("%s", "Ingrese su salario por hora: ");
	scanf("%d", &salariora);
	mensual=(salariora*horas)*30;
	printf("Su nombre es  %s", nombre);
	printf(" Y su salario mensual es:  %d", mensual);
	return 0;
}
/*Este algoritmo es un poquiiito mas complejo, definimos dos variables numericas que serian las horas trabajadas y el salario por hora, despues definimos
una variable de caracteres que seria el nombre y damos un limite de 25 caracteres (lo siento para los que tengan algun nombre mas largo)
luego de asigmar los valores a los variables realiza una simple formula que multiplica el salario por hora y las horas para despues multiplicarlo por
los dias del mes que en este caso seria 30 como un ejemplo cualquiera, al final al usuario le imprime su propio nombre y su salario mensual*/