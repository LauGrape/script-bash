#!/bin/bash


read -p "Introduce el primer número: " n1

read -p "Introduce el segundo número: " n2


resultado=$(echo "$n1 + $n2" | bc)


echo "La suma de $n1 y $n2 es: $resultado"

