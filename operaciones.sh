#!/bin/bash


num1=5
num2=7


resultado=$(echo "$num1 + $num2" | bc)


echo "La suma de $num1 y $num2 es: $resultado"
