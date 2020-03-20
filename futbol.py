#esta es la primer etapa, donde cargo todas las variables y me aseguro de que estén bien cargadas
ganados = int(input("Ingresa cuantos partidos ganaron "))
perdidos = int(input("Ingresa cuantos partidos perdieron "))
empatados = int(input("Ingresa cuantos partidos empataron "))

print("O sea que ganaron: ", ganados,". Perdieron: ",perdidos,". Y empataron: ",empatados)

#en la segunda etapa calculo el puntaje final y lo muestro
puntaje= ganados*3 + perdidos*1 + empatados*0

print("Su resultado final es de: ",puntaje, " puntos finales.")