def masOMenos(precioOculto,precioAdivinado):
  #programar tu función acá




#pOculto es una variable que guarda el precio que la gente tiene que adivinar
precioOculto = 3970

#Padivinado es la variable que vamos a usar el usuario
precioAdivinado = 0

print("Vamos a adivinar el precio de una mochila!")
print("Entre 1000 y 9990")
print("Ingresá el premio que creés que sale! \n")

#MIENTRAS ambos precios sean diferentes, REPETIR
while (precioOculto != precioAdivinado):
  precioAdivinado = int(input())
  resultado = masOMenos(precioOculto,precioAdivinado)
  print (resultado)
