# ============================================================
#   LA OVEJA PARLANTE - Elige tu propia aventura
#   Ejemplo para condicionales en Python
# ============================================================

print("=" * 55)
print("       LA OVEJA PARLANTE")
print("       ~ Una aventura de taberna ~")
print("=" * 55)
print()

# ── INTRODUCCION ─────────────────────────────────────────────
print("""Estas sentado en la Taberna del Oso Dormido, disfrutando
de una jarra de hidromiel. La noche es tranquila... hasta que
la puerta se abre de golpe. Entra una oveja blanca, se para
sobre sus dos patas traseras y te mira fijamente a los ojos.

"Vos. Necesito que me sigás. Ahora. No hay tiempo que perder,"
dice la oveja con voz ronca.
""")

print("Que haces?")
print("  A) Seguis a la oveja sin dudarlo")
print("  B) Le preguntas de que se trata antes de moverte")
eleccion_1 = input("Tu eleccion (A/B): ")

# ══════════════════════════════════════════════════════════════
# RAMA A — Seguis a la oveja
# ══════════════════════════════════════════════════════════════
if eleccion_1 == "A":
    print("""Dejás la jarra sobre la mesa y seguís a la oveja hacia
la oscuridad de la calle. Ella trota velozmente hasta llegar
al borde del bosque, donde un camino se divide en dos.

"Por ahí o por alla. Vos elegís, chango,"
dice la oveja senalando con la pata.
""")
    print("Que camino tomás?")
    print("  A) El camino de la izquierda, entre arboles retorcidos")
    print("  B) El camino de la derecha, iluminado por luciernagas")
    eleccion_2a = input("Tu eleccion (A/B): ")

    # ── RAMA A-A ─────────────────────────────────────────────
    if eleccion_2a == "A":
        print("""Entre los arboles retorcidos encuentran una cueva.
La oveja entra sin dudar. Adentro hay un dragon pequeno,
del tamano de un perro, dormido sobre un cofre de madera.

"Necesito ese cofre," susurra la oveja, "pero si el dragon
se despierta... estamos hasta las manos. Que hacemos?"
""")
        print("Cómo actuás?")
        print("  A) Intentás distraer al dragon con un trozo de carne")
        print("  B) Tratas de agarrar el cofre sigilosamente")
        eleccion_3aa = input("Tu eleccion (A/B): ")

        if eleccion_3aa == "A":
            print("""Sacas un trozo de carne seca de tu bolso y lo lanzas
al otro lado de la cueva. El dragon abre un ojo... lo olfatea...
y salta a por el! La oveja agarra el cofre y corren afuera.

"Vamooo!" bala la oveja entre risas.
Dentro del cofre hay un mapa hacia el tesoro del Valle Perdido.
La oveja te lo regala como agradecimiento.

La aventura recien empieza... pero eso es otra historia.
""")
            print("FIN: El mapa del Valle Perdido")

        else:
            print("""Avanzas de puntillas, extendes la mano hacia el cofre...
CRAAAC! Una ramita seca bajo tu pie. El dragon se despierta
furioso, escupe una llamarada y salen corriendo a toda velocidad.

Escapan por los pelos, pero el cofre quedo atras.

"Bueno... al menos seguimos vivos," suspira la oveja.
""")
            print("FIN: Escaparon con lo justo (pero vivos)")

    # ── RAMA A-B ─────────────────────────────────────────────
    elif eleccion_2a == "B":
        print("""El camino de las luciernagas los lleva hasta un claro
donde hay una cabana con la puerta entreabierta. Dentro se
escucha el sonido de alguien llorando.

"Ahi esta el problema," murmura la oveja, "pero hay un guardia
durmiendo junto a la puerta."
""")
        print("Que haces?")
        print("  A) Buscas una entrada alternativa por la ventana")
        print("  B) Despertas al guardia y lo enfrentas directamente")
        eleccion_3ab = input("Tu eleccion (A/B): ")

        print()

        if eleccion_3ab == "A":
            print("""Rodeas la cabana y encontras una ventana sin cerrojo.
Al entrar ven a una viejita encerrada en un cuarto.
Resulta ser la abuela de la oveja, secuestrada por unos
mercaderes que querian vender su lana magica.

La liberan sin hacer ruido y escapan al bosque.
La abuela oveja les prepara un guiso de hierbas que
les da +10 de fuerza por una semana entera.
""")
            print("FIN: La abuela esta a salvo")

        else:
            print("""Sacudis al guardia. Abre los ojos, ve a una oveja parlante
y a un aventurero desconocido, y... sale corriendo aterrado.

Entran a la cabana tranquilamente. La viejita adentro
resulto ser una bruja que estaba practicando llanto dramatico.
Los invita a tomar te y les cuenta el secreto de la felicidad.

No encontraron ningun tesoro, pero aprendieron algo valioso.
""")
            print("FIN: El secreto de la felicidad (y un te muy rico)")

    else:
        print("Opcion no valida. La oveja se fue sin vos. Fin.")

# ══════════════════════════════════════════════════════════════
# RAMA B — Le preguntas a la oveja de que se trata
# ══════════════════════════════════════════════════════════════
elif eleccion_1 == "B":
    print("""La oveja suspira impaciente, pero accede a explicar.

"Hay un hechicero que convirtio a toda mi familia en alfombras.
Necesito a alguien con espada y cerebro. Te sumás o no?"

Antes de que puedas responder, la oveja saca un pergamino
y lo despliega sobre tu mesa. Es un contrato.
""")
    print("Que hacés?")
    print("  A) Firmás el contrato y aceptás la misión")
    print("  B) Negociás las condiciones antes de firmar")
    eleccion_2b = input("Tu eleccion (A/B): ")

    print()

    # ── RAMA B-A ─────────────────────────────────────────────
    if eleccion_2b == "A":
        print("""Firmás con una floritura. La oveja sonrie satisfecha.

Viajan toda la noche hasta llegar a la torre del hechicero.
La puerta principal esta sellada con magia, pero hay una
entrada trasera... custodiada por dos gargolas de piedra.
""")
        print("Como entrás?")
        print("  A) Intentas resolver el acertijo grabado en la puerta")
        print("  B) Pedirle a la oveja que distraiga a las gargolas con su canto")
        eleccion_3ba = input("Tu eleccion (A/B): ")

        print()

        if eleccion_3ba == "A":
            print("""El acertijo dice: "Soy suave sin ser agua, cubro sin
ser techo, y las ovejas me llevan puesto." La respuesta:
la lana! Pronuncias la palabra y la puerta se abre sola.

Dentro, encuentran al hechicero dormido en su sillon.
La oveja recita un contra-hechizo y su familia vuelve a la vida.
Las alfombras se transforman en un ejercito de ovejas furiosas!

El hechicero huye en pijama. Victoria total.
""")
            print("FIN: El hechicero en pijama")

        else:
            print("""La oveja empieza a cantar un chamamé.
Las gargolas se quedan completamente inmóviles... paralizadas
por la emoción! Entran corriendo a la torre.

Sin embargo, dentro hay un laberinto de espejos y se pierden
durante tres horas. Para cuando encuentran al hechicero,
el ya se había arrepentido solo y estaba deshaciendo el hechizo.

Todo bien que termina bien, aunque fue raro.
""")
            print("FIN: El hechicero arrepentido (que conveniente)")

    # ── RAMA B-B ─────────────────────────────────────────────
    elif eleccion_2b == "B":
        print("""Pedis el 20% del tesoro que haya en la torre del hechicero
y que la oveja te ensene el idioma ovejil al terminar.

Ella lo piensa cinco segundos. "Trato hecho."

Llegan a la torre al amanecer. La puerta esta abierta de par
en par. Demasiado fácil. La oveja frunce el hocico.

"Esto es una trampa," dice.
""")
        print("Que decidis?")
        print("  A) Entras igual, con cuidado")
        print("  B) Esperas afuera y observas primero")
        eleccion_3bb = input("Tu eleccion (A/B): ").strip().upper()

        print()

        if eleccion_3bb == "A":
            print("""Entras con la mano en la espada. Era una trampa:
el suelo es pegajoso y tus botas quedan atascadas.

El hechicero aparece riendo... pero entonces la oveja
empieza a lanzarle mechones de lana. El hechicero es alergico.
Entre estornudo y estornudo, no puede lanzar ningun hechizo.
Lo atrapan con su propia capa.

La mision fue un exito (y bastante ridicula).
""")
            print("FIN: Alergias al rescate (no pregunten)")

        else:
            print("""Esperan escondidos entre los arbustos. Media hora despues,
el hechicero sale de la torre... de vacaciones! Lleva una
valija y silba alegremente. Se va en una nube magica.

Con la torre vacia, entran sin problemas. La familia oveja
estaba encerrada en el sotano. Las liberan, cobran el tesoro
y la oveja te ensena a decir "buenos dias" en ovejil: "Beeee-nos dias."

No fue heroico, pero funciono.
""")
            print("FIN: El hechicero estaba de vacaciones")

    else:
        print("Opcion no valida. La oveja firmo el contrato sola y se fue.")

else:
    print("Opcion no valida. La oveja resofo y salio sin vos.")

print()
print("=" * 55)
print("  Gracias por jugar")
print("=" * 55)
