//diseñar un algoritmo que obtenga el valor de X con la formula X=1/b + 1/c + d
#include<stdio.h>
int main(){
	float x;
	float c;
	float d;
	float b;
	printf("%s", "Variable b: ");
	scanf("%f", &b);
	printf("%s", "Variable c: ");
	scanf("%f", &c);
	printf("%s", "Variable d: ");
	scanf("%f", &d);
	
	x=(1/b)+(1/c)+d;
	printf("El resultado es:  %f", x);
	return 0;
}
/*Este algoritmo nuevamente le pide tres variables al usuario en este caso tanto de valor entero como de valor decimal, siendo b,c y d las variables a las
cuales se les va a asignar un valor, luego el algoritmo realiza la formula que especifico el problema y imprime el resulado al usuario*/