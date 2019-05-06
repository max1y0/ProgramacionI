

void setup() {
  size(400, 400);
}

void draw() {
  background(120);
  boolean boton1 = boton(100, 100);
  boolean boton2 = boton(200,200);
  if(boton1){
    background(0);
  }
  if(boton2){
    background(250);
  }
}

boolean boton(int posX,int posY){
  fill(20,20,20);
  if (mouseX >posX && mouseX<posX+100 && mouseY>posY &&mouseY<posY+100){
    fill(200,40,40);
    if (mousePressed){
      return true;
    }
  }
  rect(posX,posY,100,100);
  return false;
}
