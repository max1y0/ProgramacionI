int circX;
int circY;
int velX;
int velY;
int pal1;
int pal2;

void setup () {
  circX = 200;
  circY = 200;
  velX = 1;
  velY = 1;
  pal1 = 200;
  pal2 = 200;
  size(400, 600);
}

void draw() {
  background (30);
  noStroke();
  ellipse(circX, circY, 10, 10);
  circX = circX + velX;
  circY = circY + velY;
  rect(pal1, 590, 40, 10);
  rect(pal2, 0, 40, 10);

  if (mousePressed) {   
    if (mouseY>300) {  //parte inferior de la pantalla
      if (mouseX>200) {
        pal1 ++;
      } else {
        pal1 --;
      }
    } else { //parte superior de la pantalla
      if (mouseX>200) {
        pal2 ++;
      } else {
        pal2 --;
      }
    }
  }
  
  //detección de bordes
  if (circX>width || circX < 0) { 
    velX = velX*-1;
  }
  
  //detección de paletas
  if (circY < 10 && circX>pal2 && circX<pal2+40) { 
    velY = velY*-1;
  }
  if (circY>590 && circX>pal1 && circX<pal1+40){
    velY = velY*-1;
  }
}
