#!/bin/bash

# Archivo donde se guardarán los "Hola"
output_file="saludos.txt"

# Número de repeticiones
n=5

# Bucle for
for ((i=1; i<=n; i++))
do
  echo "Hola" >> "$output_file"
done

