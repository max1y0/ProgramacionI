int cantAutos = 8;
float[] velocidades;
float posY = 0;
void setup() {
  size(400, 600);
  velocidades = new float[cantAutos];
  asignarVelocidades();
}

void draw() {
  background(220);
  lineaPartida();
  largada();
}

void dibujarAuto(int posH,float posV){
  fill(200,posH,100);
  //chasis
  rect(posH,posV,20,35);
  
  //ruedas
  rect(posH-2,posV,5,10);
  rect(posH-2,posV+25,5,10);
  rect(posH+18,posV,5,10);
  rect(posH+18,posV+25,5,10);
}

void lineaPartida() {
  for (int i= 0; i<cantAutos;i++){
    dibujarAuto(i*50,0);
  }
}

void asignarVelocidades(){
  for (int i= 0; i<cantAutos;i++){
    velocidades[i]=random(0,1.5);
    print(velocidades[i]+" jj ");
  }
}
void largada(){
  background(220);
  for (int i= 0; i<cantAutos;i++){
    dibujarAuto(i*50,velocidades[i]);
    velocidades[i]=velocidades[i]*1.01;
  }
}
