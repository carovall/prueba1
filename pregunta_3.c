#include <stdio.h> 
#include <stdlib.h>

typedef void (*funcion_energia)(double**, double**,int,double*,double*);

typedef struct Estructura{
   int n;
   double **posiciones; //array dinamico
   double **velocidades;
   funcion_energia calculo_energia; //puntero a funcion
   double e_cinetica;
   double e_potencial;
}


void fexterna_energia(double **posiciones, double **velocidades, int n, double *e_cinetica, double *e_potencial){
   *e_cinetica=0;
   *e_potencial=0;
}


void init(struct Estructura *ptr, int n, funcion_energia energia){ //se referencia struct a través de puntero
   ptr->n=n; //guardar valor de numero de particulas en variable n

   ptr->posiciones = malloc(3*sizeof(**posiciones)); //reserva de memoria para posiciones
   for(i=0; i<3; i++){
      ptr->posiciones[i] = malloc(n*sizeof(**posiciones));
   }

   ptr->velocidades = malloc(3*sizeof(**velocidades)); //reserva de memoria para velocidades
   for(i=0; i<3; i++){
      ptr->velocidades[i] = malloc(n*sizeof(**velocidades));
   }

   ptr->e_cinetica=0; //inicializar

   ptr->e_potencial=0;

   ptr->calculo_energia=energia;
}


void calculos(struct Estructura *ptr){
   ptr->calculo_energia(ptr->posiciones, ptr->velocidades, ptr->n, &(ptr->e_cinetica),&(ptr->e_potencial));
}


void liberar(struct Etructura *ptr){
   for(int i=0; i<3; i++){
      free(ptr->posiciones[i]);
      free(ptr->velocidades[i]);
   }
   free(ptr->posiciones);
   free(ptr->velocidades);
}


int main(){
   struct Estructura sistema_p;
   struct Estructura *puntero_sistema= &sistema_p;

   init(puntero_sistema, 2, fexterna_energia);
   calculos(puntero_sistema);
   liberar(puntero_sistema);
}
