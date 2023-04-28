#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef void (*funcion_potencial)(double **, double *);

struct Estructura{
    double **posiciones; //array dinamico
    funcion_potencial calculo_energia; //puntero a funcion
    double energia_total;
};

void potencial(double **posiciones, double *energia_total){
    double suma = 0;
    for (int i = 0; i < 8; i++){
        for (int j = i+1; j < 8; j++){
            double x = posiciones[0][i] - posiciones[0][j];
            double y = posiciones[1][i] - posiciones[1][j];
            double z = posiciones[2][i] - posiciones[2][j];
            double r = sqrt(x*x + y*y + z*z);
            double potencial = pow(1-exp(r-1),2);
            suma += potencial;
        }
    }
    *energia_total = suma;
}

void init(struct Estructura *ptr, funcion_potencial energia){
    ptr->posiciones = malloc(3 * sizeof(double *)); // reserva de memoria
    for (int i = 0; i < 3; i++){
        ptr->posiciones[i] = malloc(8 * sizeof(double));
    }

    int matriz[3][8] = {{0,0,0,0,1,1,1,1}, //columnas contienen las posiciones de las 8 particulas
                        {0,0,1,1,0,0,1,1},
                        {0,1,0,1,0,1,0,1}};

    for (int i = 0; i < 3; i++) {
        for (int j = 0; j < 8; j++) {
            ptr->posiciones[i][j] = matriz[i][j];
        }

    ptr->calculo_energia = energia;
    }
}

void calculos(struct Estructura *ptr){
    ptr->calculo_energia(ptr->posiciones, &(ptr->energia_total));
}

void liberar(struct Estructura *ptr){
   for(int i=0; i<3; i++){
      free(ptr->posiciones[i]);
   }
   free(ptr->posiciones);
}


int main(){
    struct Estructura sistema_p;
    struct Estructura *puntero_sistema = &sistema_p;
    init(puntero_sistema, potencial);
    calculos(puntero_sistema);
    printf("Suma total de la energía potencial del sistema: %lf\n", sistema_p.energia_total);
    liberar(puntero_sistema);
}
