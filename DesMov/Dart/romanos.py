def decimal_a_romano(decimal):
    valores = [
        1000, 900, 500, 400,
        100, 90, 50, 40,
        10, 9, 5, 4,
        1
    ]
    simbolos = [
        "M", "CM", "D", "CD",
        "C", "XC", "L", "XL",
        "X", "IX", "V", "IV",
        "I"
    ]

    romano = ""
    i = 0
    while decimal > 0:
        while decimal >= valores[i]:
            romano += simbolos[i]
            decimal -= valores[i]
        i += 1 
    return romano


while True:
    numero_decimal = int(input("Ingresa un número decimal (1-3999): "))
    if 1 <= numero_decimal <= 3999:
        break
    print("Por favor ingresa un número entre 1 y 3999.")

numero_romano = decimal_a_romano(numero_decimal)
print(f"El número {numero_decimal} en romano es: {numero_romano}")