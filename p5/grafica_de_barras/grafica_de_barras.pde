int[] datos = {12, 4, 6, 9, 8, 9, 12, 1, 15};
int ancho;
int escala;

void setup() {
  size(600, 400);
}

void draw() {
  dibujarArr(datos);
}

void dibujarArr(int[] datos){
  int ancho= 600/datos.length;
  int escala = height/15;
  for (int i = 0; i < datos.length; i++) {
    rect(i*ancho, height, ancho, -datos[i]*escala);
  }
}
