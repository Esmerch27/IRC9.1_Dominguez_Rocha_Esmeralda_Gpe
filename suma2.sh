#!/bin/bash

# Función para comprobar si la entrada es un número
is_number() {
    [[ "$1" =~ ^-?[0-9]+$ ]]  # Acepta números enteros positivos y negativos
}

# Solicitar primer número
echo -n "Ingresa el primer número: "
read num1
# Verificar si el primer número es válido
if ! is_number "$num1"; then
    echo "Error: $num1 no es un número válido."
    exit 1
fi

# Solicitar segundo número
echo -n "Ingresa el segundo número: "
read num2
# Verificar si el segundo número es válido
if ! is_number "$num2"; then
    echo "Error: $num2 no es un número válido."
    exit 1
fi

# Realizar las operaciones
suma=$((num1 + num2))
resta=$((num1 - num2))

# Mostrar resultados
echo "La suma de $num1 y $num2 es: $suma"
echo "La resta de $num1 menos $num2 es: $resta"
