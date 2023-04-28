#!/usr/bin/awk -f

BEGIN {
    FS = ",";
    lambda_min = 9999999999.99999; # inicializar
    lambda_max = -999999999.99999;
    Rflux_min = 9999999999.99999;
    Rflux_max = -999999999.99999;
    sumatoria_Rflux = 0;
    sumatoria_Nflux = 0;
    sumatoria_NfluxV = 0;
    contador = 0;
    cuadrado_Rflux = 0;
    cuadrado_Nflux = 0;
    cuadrado_NfluxV = 0;

    lambda_min26 = 9999999999.99999; # inicializar
    lambda_max26 = -999999999.99999;
    Rflux_min26 = 9999999999.99999;
    Rflux_max26 = -999999999.99999;
    sumatoria_Rflux26 = 0;
    sumatoria_Nflux26 = 0;
    sumatoria_NfluxV26 = 0;
    contador26 = 0;
    cuadrado_Rflux26 = 0;
    cuadrado_Nflux26 = 0;
    cuadrado_NfluxV26 = 0;

    lambda_min38 = 9999999999.99999; # inicializar
    lambda_max38 = -999999999.99999;
    Rflux_min38 = 9999999999.99999;
    Rflux_max38 = -999999999.99999;
    sumatoria_Rflux38 = 0;
    sumatoria_Nflux38 = 0;
    sumatoria_NfluxV38 = 0;
    contador38 = 0;
    cuadrado_Rflux38 = 0;
    cuadrado_Nflux38 = 0;
    cuadrado_NfluxV38 = 0;

    lambda_min43 = 9999999999.99999; # inicializar
    lambda_max43 = -999999999.99999;
    Rflux_min43 = 9999999999.99999;
    Rflux_max43 = -999999999.99999;
    sumatoria_Rflux43 = 0;
    sumatoria_Nflux43 = 0;
    sumatoria_NfluxV43 = 0;
    contador43 = 0;
    cuadrado_Rflux43 = 0;
    cuadrado_Nflux43 = 0;
    cuadrado_NfluxV43 = 0;

    lambda_min50 = 9999999999.99999; # inicializar
    lambda_max50 = -999999999.99999;
    Rflux_min50 = 9999999999.99999;
    Rflux_max50 = -999999999.99999;
    sumatoria_Rflux50 = 0;
    sumatoria_Nflux50 = 0;
    sumatoria_NfluxV50 = 0;
    contador50 = 0;
    cuadrado_Rflux50 = 0;
    cuadrado_Nflux50 = 0;
    cuadrado_NfluxV50 = 0;

}
{
    if (NR > 1) {
        if (NR == 2) {
            lambda_min = $5;
            lambda_max = $5;
            Rflux_min = $9;
            Rflux_max = $9;

        } else {
            if ($5 < lambda_min) {
                lambda_min = $5;
            }
            if ($5 > lambda_max) {
                lambda_max = $5;
            }
            if ($9 < Rflux_min) {
                Rflux_min = $9;
            }
            if ($9 > Rflux_max) {
                Rflux_max = $9;
            }
        }
        sumatoria_Rflux = sumatoria_Rflux + $9;
        sumatoria_Nflux = sumatoria_Nflux + $11;
        sumatoria_NfluxV = sumatoria_NfluxV + $12;
        contador = contador + 1;
        cuadrado_Rflux = cuadrado_Rflux + $9*$9;
        cuadrado_Nflux = cuadrado_Nflux + $11*$11;
        cuadrado_NfluxV = cuadrado_NfluxV + $12*$12;
        a[$1]++
    }
}

{
   if ($1 == "26"){
    if (NR > 1) {
        if (NR == 2) {
            lambda_min26 = $5;
            lambda_max26 = $5;
            Rflux_min26 = $9;
            Rflux_max26 = $9;

        } else {
            if ($5 < lambda_min26) {
                lambda_min26 = $5;
            }
            if ($5 > lambda_max26) {
                lambda_max26 = $5;
            }
            if ($9 < Rflux_min26) {
                Rflux_min26 = $9;
            }
            if ($9 > Rflux_max26) {
                Rflux_max26 = $9;
            }
        }
        sumatoria_Rflux26 = sumatoria_Rflux26 + $9;
        sumatoria_Nflux26 = sumatoria_Nflux26 + $11;
        sumatoria_NfluxV26 = sumatoria_NfluxV26 + $12;
        contador26 = contador26 + 1;
        cuadrado_Rflux26 = cuadrado_Rflux26 + $9*$9;
        cuadrado_Nflux26 = cuadrado_Nflux26 + $11*$11;
        cuadrado_NfluxV26 = cuadrado_NfluxV26 + $12*$12;
    }
  }
}

{
   if ($1 == "38"){
    if (NR > 1) {
        if (NR == 2) {
            lambda_min38 = $5;
            lambda_max38 = $5;
            Rflux_min38 = $9;
            Rflux_max38 = $9;

        } else {
            if ($5 < lambda_min38) {
                lambda_min38 = $5;
            }
            if ($5 > lambda_max38) {
                lambda_max38 = $5;
            }
            if ($9 < Rflux_min38) {
                Rflux_min38 = $9;
            }
            if ($9 > Rflux_max38) {
                Rflux_max38 = $9;
            }
        }
        sumatoria_Rflux38 = sumatoria_Rflux38 + $9;
        sumatoria_Nflux38 = sumatoria_Nflux38 + $11;
        sumatoria_NfluxV38 = sumatoria_NfluxV38 + $12;
        contador38 = contador38 + 1;
        cuadrado_Rflux38 = cuadrado_Rflux38 + $9*$9;
        cuadrado_Nflux38 = cuadrado_Nflux38 + $11*$11;
        cuadrado_NfluxV38 = cuadrado_NfluxV38 + $12*$12;
    }
  }
}

{
   if ($1 == "43"){
    if (NR > 1) {
        if (NR == 2) {
            lambda_min43 = $5;
            lambda_max43 = $5;
            Rflux_min43 = $9;
            Rflux_max43 = $9;

        } else {
            if ($5 < lambda_min43) {
                lambda_min43 = $5;
            }
            if ($5 > lambda_max43) {
                lambda_max43 = $5;
            }
            if ($9 < Rflux_min43) {
                Rflux_min43 = $9;
            }
            if ($9 > Rflux_max43) {
                Rflux_max43 = $9;
            }
        }
        sumatoria_Rflux43 = sumatoria_Rflux43 + $9;
        sumatoria_Nflux43 = sumatoria_Nflux43 + $11;
        sumatoria_NfluxV43 = sumatoria_NfluxV43 + $12;
        contador43 = contador43 + 1;
        cuadrado_Rflux43 = cuadrado_Rflux43 + $9*$9;
        cuadrado_Nflux43 = cuadrado_Nflux43 + $11*$11;
        cuadrado_NfluxV43 = cuadrado_NfluxV43 + $12*$12;
    }
  }
}

{
   if ($1 == "50"){
    if (NR > 1) {
        if (NR == 2) {
            lambda_min50 = $5;
            lambda_max50 = $5;
            Rflux_min50 = $9;
            Rflux_max50 = $9;

        } else {
            if ($5 < lambda_min50) {
                lambda_min50 = $5;
            }
            if ($5 > lambda_max50) {
                lambda_max50 = $5;
            }
            if ($9 < Rflux_min50) {
                Rflux_min50 = $9;
            }
            if ($9 > Rflux_max50) {
                Rflux_max50 = $9;
            }
        }
        sumatoria_Rflux50 = sumatoria_Rflux50 + $9;
        sumatoria_Nflux50 = sumatoria_Nflux50 + $11;
        sumatoria_NfluxV50 = sumatoria_NfluxV50 + $12;
        contador50 = contador50 + 1;
        cuadrado_Rflux50 = cuadrado_Rflux50 + $9*$9;
        cuadrado_Nflux50 = cuadrado_Nflux50 + $11*$11;
        cuadrado_NfluxV50 = cuadrado_NfluxV50 + $12*$12;
    }
  }
}



END {
    print "Número total de ordenes: ", length(a);
    printf "Mínimo valor de longitud de onda: %f\n", lambda_min;
    printf "Máximo valor de longitud de onda: %f\n", lambda_max;
    printf "Mínimo valor de flujo de luz recibida: %f\n", Rflux_min;
    printf "Máximo valor de flujo de luz recibida: %f\n", Rflux_max;
    printf "Valor promedio de flujo de luz recibida: %f\n", sumatoria_Rflux/contador;
    printf "Valor promedio de flujo normalizado: %f\n", sumatoria_Nflux/contador;
    printf "Valor promedio de la variación del flujo normalizado: %f\n", sumatoria_NfluxV/contador;
    printf "Desviación estándar de flujo de luz recibida: %f\n",sqrt((cuadrado_Rflux/contador) - (sumatoria_Rflux/contador)*(sumatoria_Rflux/contador));
    printf "Desviación estándar de flujo normalizado: %f\n", sqrt((cuadrado_Nflux/contador) - (sumatoria_Nflux/contador)*(sumatoria_Nflux/contador));
    printf "Desviación estándar de la variación del flujo normalizado: %f\n", sqrt((cuadrado_NfluxV/contador) - (sumatoria_NfluxV/contador)*(sumatoria_NfluxV/contador));

    print "Orden 26:";
    printf "Mínimo valor de longitud de onda: %f\n", lambda_min26;
    printf "Máximo valor de longitud de onda: %f\n", lambda_max26;
    printf "Mínimo valor de flujo de luz recibida: %f\n", Rflux_min26;
    printf "Máximo valor de flujo de luz recibida: %f\n", Rflux_max26;
    printf "Valor promedio de flujo de luz recibida: %f\n", sumatoria_Rflux26/contador26;
    printf "Valor promedio de flujo normalizado: %f\n", sumatoria_Nflux26/contador26;
    printf "Valor promedio de la variación del flujo normalizado: %f\n", sumatoria_NfluxV26/contador26;
    printf "Desviación estándar de flujo de luz recibida: %f\n",sqrt((cuadrado_Rflux26/contador26) - (sumatoria_Rflux26/contador26)*(sumatoria_Rflux26/contador26));
    printf "Desviación estándar de flujo normalizado: %f\n", sqrt((cuadrado_Nflux26/contador26) - (sumatoria_Nflux26/contador26)*(sumatoria_Nflux26/contador26));
    printf "Desviación estándar de la variación del flujo normalizado: %f\n", sqrt((cuadrado_NfluxV26/contador26) - (sumatoria_NfluxV26/contador26)*(sumatoria_NfluxV26/contador26));

    print "Orden 38:";
    printf "Mínimo valor de longitud de onda: %f\n", lambda_min38;
    printf "Máximo valor de longitud de onda: %f\n", lambda_max38;
    printf "Mínimo valor de flujo de luz recibida: %f\n", Rflux_min38;
    printf "Máximo valor de flujo de luz recibida: %f\n", Rflux_max38;
    printf "Valor promedio de flujo de luz recibida: %f\n", sumatoria_Rflux38/contador38;
    printf "Valor promedio de flujo normalizado: %f\n", sumatoria_Nflux38/contador38;
    printf "Valor promedio de la variación del flujo normalizado: %f\n", sumatoria_NfluxV38/contador38;
    printf "Desviación estándar de flujo de luz recibida: %f\n",sqrt((cuadrado_Rflux38/contador38) - (sumatoria_Rflux38/contador38)*(sumatoria_Rflux38/contador38));
    printf "Desviación estándar de flujo normalizado: %f\n", sqrt((cuadrado_Nflux38/contador38) - (sumatoria_Nflux38/contador38)*(sumatoria_Nflux38/contador38));
    printf "Desviación estándar de la variación del flujo normalizado: %f\n", sqrt((cuadrado_NfluxV38/contador38) - (sumatoria_NfluxV38/contador38)*(sumatoria_NfluxV38/contador38));

    print "Orden 43:";
    printf "Mínimo valor de longitud de onda: %f\n", lambda_min43;
    printf "Máximo valor de longitud de onda: %f\n", lambda_max43;
    printf "Mínimo valor de flujo de luz recibida: %f\n", Rflux_min43;
    printf "Máximo valor de flujo de luz recibida: %f\n", Rflux_max43;
    printf "Valor promedio de flujo de luz recibida: %f\n", sumatoria_Rflux43/contador43;
    printf "Valor promedio de flujo normalizado: %f\n", sumatoria_Nflux43/contador43;
    printf "Valor promedio de la variación del flujo normalizado: %f\n", sumatoria_NfluxV43/contador43;
    printf "Desviación estándar de flujo de luz recibida: %f\n",sqrt((cuadrado_Rflux43/contador43) - (sumatoria_Rflux43/contador43)*(sumatoria_Rflux43/contador43));
    printf "Desviación estándar de flujo normalizado: %f\n", sqrt((cuadrado_Nflux43/contador43) - (sumatoria_Nflux43/contador43)*(sumatoria_Nflux43/contador43));
    printf "Desviación estándar de la variación del flujo normalizado: %f\n", sqrt((cuadrado_NfluxV43/contador43) - (sumatoria_NfluxV43/contador43)*(sumatoria_NfluxV43/contador43));

    print "Orden 50:";
    printf "Mínimo valor de longitud de onda: %f\n", lambda_min50;
    printf "Máximo valor de longitud de onda: %f\n", lambda_max50;
    printf "Mínimo valor de flujo de luz recibida: %f\n", Rflux_min50;
    printf "Máximo valor de flujo de luz recibida: %f\n", Rflux_max50;
    printf "Valor promedio de flujo de luz recibida: %f\n", sumatoria_Rflux50/contador50;
    printf "Valor promedio de flujo normalizado: %f\n", sumatoria_Nflux50/contador50;
    printf "Valor promedio de la variación del flujo normalizado: %f\n", sumatoria_NfluxV50/contador50;
    printf "Desviación estándar de flujo de luz recibida: %f\n",sqrt((cuadrado_Rflux50/contador50) - (sumatoria_Rflux50/contador50)*(sumatoria_Rflux50/contador50));
    printf "Desviación estándar de flujo normalizado: %f\n", sqrt((cuadrado_Nflux50/contador50) - (sumatoria_Nflux50/contador50)*(sumatoria_Nflux50/contador50));
    printf "Desviación estándar de la variación del flujo normalizado: %f\n", sqrt((cuadrado_NfluxV50/contador50) - (sumatoria_NfluxV50/contador50)*(sumatoria_NfluxV50/contador50));
}
