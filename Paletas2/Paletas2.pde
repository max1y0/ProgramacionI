int pal1;
int pal2;

void setup() {
  size (400, 600);
  pal1 = 200;
  pal2 = 200;
}

void draw() {
  background (30);
  rect(pal1, 590, 40, 10);
  rect(pal2, 0, 40, 10);

  //movimiento de paletas
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
}
