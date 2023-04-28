#include "header.h"

int main()
{
    float k1=1.0;
    float k2=2.0;
    float k3=1.0;
    float k4=1.0;
    float k5=2.0;

    double A_data[] = {k1+k2+k3+k5, -k3, -k5, -k3, k3+k4, k4, -k5, -k4, k4+k5};
    gsl_matrix_view A = gsl_matrix_view_array(A_data, 3, 3);

    double b_data[] = {2, 1, 2};
    gsl_vector_view b = gsl_vector_view_array(b_data, 3);

    gsl_permutation *p = gsl_permutation_alloc(3);
    gsl_vector *x = gsl_vector_alloc(3);
    int signum=1;

    gsl_linalg_LU_decomp(&A.matrix, p, &signum);
    gsl_linalg_LU_solve(&A.matrix, p, &b.vector, x);

    printf("vector solucion:\n");
    gsl_vector_fprintf(stdout, x, "%f");

    gsl_permutation_free(p);
    gsl_vector_free(x);

    return 0;
}
