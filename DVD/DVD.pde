//1 dibujar una pelota en un fondo contrastante
//2 hacer que la pelota se mueva horizontalmente
//3 hacer que la pelota se mueva verticalmente
//4 Detectemos los bordes!


int circX;
int circY;
int velX;
int velY;

void setup () {
  circX = 200;
  circY = 200;
  velX = 1;
  velY = 1;
  size(400, 600);
}

void draw() {
  background (30);
  noStroke();
  ellipse(circX, circY, 10, 10);
  circX = circX + velX;
  circY = circY + velY;
  
  //detección de bordes
  if (circX>width || circX < 0) { 
    velX = velX*-1;
  }
  if (circY>height || circY < 0) { 
    velY = velY*-1;
  }
}
