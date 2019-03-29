int circX;
int circY;
int velX;
int velY;

void setup () {
  circX = 0;
  circY = height/2;
  size(400, 600);
  velX = 4;
  velY = 4;
}

void draw() {
  background (30);
  noStroke();
  ellipse(circX, circY, 50, 50);
  circX = circX + velX;
  circY = circY + velY;
  //detección de bordes
  if (circX > width || circX < 0)  {
    velX = velX*-1;
    fill(random(255),random(255),random(255));
  }
  
  if (circY>height || circY < 0) { 
    velY = velY*-1;
    fill(random(255),random(255),random(255));
  }
}
