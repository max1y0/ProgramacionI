//arreglo de gotas
int[] gotas = new int[640];

void setup() {
  size(640, 360);
  cargar(gotas);
}

void draw() {
  background(230, 230, 250);
  for (int i = 0; i < gotas.length; i++) {
    dibujar(i,gotas[i]);
    gotas[i]= caer(gotas[i]);
  }
}


//carga al arreglo con gotas de distinta altura
void cargar(int[] gotas) {
  for (int i = 0; i < gotas.length; i++) {
    gotas[i] = floor(random(-500,-50));
  }
}

//dibuja la gota en forma de linea
void dibujar(int x,int y) {
  strokeWeight(2);
  stroke(138, 43, 226);
  line(x, y, x, y+3);
}

//funcion que anima la caida, al tocar el piso vuelve hacia arriba
int caer(int y){
  y = y+4;
  if (y > height){
    y = floor(random(-500,-50)); 
  }
  return y;
}
