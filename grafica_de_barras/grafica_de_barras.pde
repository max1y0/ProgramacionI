int[] datos = {12,4,6,9,9,9,12};
int ancho= 20;
int escala = 10;

void setup(){
  size(600,400);
}

void draw(){
  for (int i = 0; i < datos.length; i++){
    rect(i*ancho,height - 50,ancho,-datos[i]*escala);
  }
}
