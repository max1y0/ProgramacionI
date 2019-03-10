//1 dibujar una pelota en un fondo contrastante
//2 hacer que la pelota se mueva horizontalmente
//3 hacer que la pelota se mueva verticalmente
//4 Detectemos los bordes!


int circX;
int circY;
int velX;
int velY;
int pal1;
int pal2;
int velPal;

void setup () {
  circX = 200;
  circY = 200;
  velX = 4;
  velY = 4;
  velPal = 10;
  pal1 = 200;
  pal2 = 200;
  //size(400, 600);
  fullScreen();
}

void draw() {
  background (30);
  noStroke();
  ellipse(circX, circY, 10, 10);
  circX = circX + velX;
  circY = circY + velY;
  rect(pal1, height-10, 100, 10);
  rect(pal2, 0, 100, 10);

  if (mousePressed) {   
    if (mouseY>height/2) {  //parte inferior de la pantalla
      if (mouseX>width/2) {
        pal1 = pal1 +velPal;
      } else {
        pal1 = pal1 -velPal;
      }
    } else { //parte superior de la pantalla
      if (mouseX>width/2) {
        pal2 = pal2 +velPal;
      } else {
        pal2 = pal2 -velPal;
      }
    }
  }
  
  //detección de bordes
  if (circX>width || circX < 0) { 
    velX = velX*-1;
  }
  
  //detección de paletas
  if (circY < 10 && circX>pal2 && circX<pal2+100) { 
    velY = velY*-1;
  }
  if (circY>height-10 && circX>pal1 && circX<pal1+100){
    velY = velY*-1;
  }
}
