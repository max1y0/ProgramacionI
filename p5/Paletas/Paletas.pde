int pal1;

void setup(){
  size (400,600);
  pal1 = 200;
}

void draw(){
  background (30);
  rect(pal1,590,40,10);
  
  //movimiento de paletas
  if (mousePressed) {
    if (mouseX>200)
      pal1 ++;
    else{
      pal1 --;
    }
  }
}
