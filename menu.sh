#!/bin/bash


calcular() {
    case $1 in
        suma)
            resultado=$(echo "$2 + $3" | bc)
            ;;
        resta)
            resultado=$(echo "$2 - $3" | bc)
            ;;
        multiplicacion)
            resultado=$(echo "$2 * $3" | bc)
            ;;
        division)
            if [ $3 -ne 0 ]; then
                resultado=$(echo "scale=2; $2 / $3" | bc)
            else
                resultado="Error: División por cero"
            fi
            ;;
        *)
            resultado="Operación no válida"
            ;;
    esac
    echo "El resultado es: $resultado"
}


echo "Ingresa la operación con letra  (suma, resta, multiplicacion, division):"
read operacion

echo "Ingresa el primer número:"
read num1

echo "Ingresa el segundo número:"
read num2


calcular $operacion $num1 $num2

