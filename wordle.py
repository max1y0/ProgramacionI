def chequeo(letra, posicion, secreto):
    if letra == secreto[posicion]:
        return "verde"
    elif letra in secreto:
        return "amarillo"
    else:
        return "rojo"

palabra_secreta = "rubia"

palabra = input("Ingrese una palabra para adivinar")

i = 0
pista = ''
for letra in palabra:
    pista += chequeo(letra,i,palabra_secreta) + ' ' 
    i+=1
print (pista)



    