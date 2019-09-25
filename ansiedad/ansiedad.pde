int ancho = 0;
int anchoMax = 200;
int velCrecimiento = 1;
void setup() {
  size(400, 400);
}

void draw() {
  background(240);
  noStroke();
  fill(100,100,250);
  
  ellipse(width/2, height/2, ancho, ancho);
  if (ancho>anchoMax || ancho < 0) {
    velCrecimiento *=-1;
  }
  ancho+=velCrecimiento;
}
