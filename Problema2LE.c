//Diseñar un algoritmo que calcule el total de una venta de tres productos.
#include<stdio.h>
int main(){
	int venta1;
	int venta2;
	int venta3;
	int total;
	printf("%s", "Costo del producto 1: ");
	scanf("%d", &venta1);
	printf("%s", "Costo del producto 2: ");
	scanf("%d", &venta2);
	printf("%s", "Costo del producto 3: ");
	scanf("%d", &venta3);
	total=venta1+venta2+venta3;
	
	printf("El total de la venta fue:  %d", total);
	return 0;
}
/*este algoritmo define las variables 1,2 y 3 de las ventas, y el total para despues. le pide en forma sucesiva al usuario ingresar las tres variables
luego este suma todas las variables ingresadas por el usuario para darle valor a la variable "total"
finalmente imprime a el usuario el resultado de la suma
*/