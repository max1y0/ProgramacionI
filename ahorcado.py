def ingresar_palabra_secreta():
    palabra_secreta = input("Ingresa la palabra secreta: ")
    return palabra_secreta

def dibujar_lineas(palabra_secreta, letras_adivinadas):
    palabra_oculta = ""
    for letra in palabra_secreta:
        if letra in letras_adivinadas:
            palabra_oculta += letra
        else:
            palabra_oculta += "_"
    return palabra_oculta

def ingresar_letra(letras_jugadas):
    letra = input("Ingresa una letra: ").lower()
    if letra in letras_jugadas:
        print("Ya habías ingresado esta letra antes.")
    else:
        letras_jugadas.append(letra)
    return letra

def no_pertenece(letra, palabra_secreta):
    return letra not in palabra_secreta

def repetida(letra, letras_jugadas):
    return letra in letras_jugadas

def acierto(letra, palabra_secreta, letras_adivinadas):
    for i in range(len(palabra_secreta)):
        if palabra_secreta[i] == letra:
            letras_adivinadas[i] = letra

def colgado(intentos):
    if intentos == 1:
        print("  O  ")
    elif intentos == 2:
        print("  O  ")
        print(" /")
    elif intentos == 3:
        print("  O  ")
        print(" / \\")
    elif intentos == 4:
        print("  O  ")
        print(" / \\")
        print("  |")
    elif intentos == 5:
        print("  O  ")
        print(" / \\")
        print("  |")
        print(" / \\")
    elif intentos == 6:
        print("  O  ")
        print(" / \\")
        print("  |")
        print(" / \\")

def victoria(palabra_secreta, letras_adivinadas):
    return "_" not in dibujar_lineas(palabra_secreta, letras_adivinadas)

def perdida(intentos):
    return intentos > 6

def main():
    palabra_secreta = ingresar_palabra_secreta()
    letras_adivinadas = ["_" for _ in palabra_secreta]
    letras_jugadas = []
    intentos = 0

    while True:
        print("\nPalabra actual:", dibujar_lineas(palabra_secreta, letras_adivinadas))
        letra = ingresar_letra(letras_jugadas)

        if no_pertenece(letra, palabra_secreta):
            intentos += 1
            colgado(intentos)
            print("La letra no está en la palabra secreta.")

        else:
            print("hola")
            acierto(letra, palabra_secreta, letras_adivinadas)

        if victoria(palabra_secreta, letras_adivinadas):
            print("\n¡Has ganado! La palabra era:", palabra_secreta)
            break

        if perdida(intentos):
            print("\n¡Has perdido! La palabra era:", palabra_secreta)
            break

if __name__ == "__main__":
    main()
