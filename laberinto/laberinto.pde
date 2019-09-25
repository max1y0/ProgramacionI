int x, y;
float eleccion;
void setup() {
  size(400, 400);
}

void draw() {
  eleccion = random(2);
  if (eleccion>1) {
    diagonal(x, y);
  } else {
    diagonalInv(x, y);
  }


  if (x<400) {
    x+=10;
  } else {
    x=0;
    y+=10;
  }
}

void diagonal(int x, int y) {
  line(x, y, x+10, y+10);
}

void diagonalInv(int x, int y) {
  line(x+10, y, x, y+10);
}
