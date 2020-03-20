int a;
int b;
int resultado1;
int resultado2;

void setup(){
  size (400,400);
  a = 1;
  b = 0;
  //f(x) = a.x+b
}

void draw(){
  noLoop();
  // dibujando la funcion
  resultado1 = height-(a*0+b);
  resultado2 = height-(a*200+b);
  line(0,resultado1,200,resultado2);
  
  //dibujando los ejes coordenados
  stroke(255,0,0);
  fill(255,0,0);
  strokeWeight(5);
  line(0,0,0,height);
  line(0,height,width,height);
  text("y",10,20);
  text("x",width-10,height-20);
}
