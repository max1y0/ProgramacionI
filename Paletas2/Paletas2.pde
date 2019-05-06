int pal1, pal2;

void setup() {
  size (400, 600);
  pal1 = width/2;
  pal2 = width/2;
}

void draw() {
  background (30);
  rect(pal1, height -10, 80, 10);
  rect(pal2, 0, 80, 10);

  //movimiento de paletas
  if (mousePressed) {   
    if (mouseY>height/2) {  //parte superior de la pantalla
      if (mouseX>width/2) {
        pal1 = pal1 +2;
      } else {
        pal1 = pal1 -2;
      }
    } else { //parte inferior de la pantalla
      if (mouseX>width/2) {
        pal2 = pal2 +2;
      } else {
        pal2 = pal2 -2;
      }
    }
  }
}
