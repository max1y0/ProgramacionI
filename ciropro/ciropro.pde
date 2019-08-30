 float[] vel = new float[4];
 

void setup() {
  size(1200,400);
  for (int i= 0; i<4; i++) {
    vel[i]= random (0,4);
  }
 
}

void draw(){
  background(200,255,120);
  //autito(20,20);
  pista();
  //cuatroautos();
  largada();
}


void autito(float x , int y){
 
  //rect(x,y,80,20);
  fill (255,0,0);
  rect(x+40,y+80,80,45);
  fill(100,100,100);
  ellipse(x+45,y+125,20,15);
  ellipse(x+115,y+125,20,15);
  ellipse(x+45,y+80,20,15);
  ellipse(x+115,y+80,20,15);
  
  
  
}  
  
 void cuatroautos(){
  for(int i = 0; i<4; i++){
    autito(0,i*80);
   }
 
 }
 void largada(){
 for(int i = 0; i<4; i++){
    autito(vel[i],i*65);
    vel[i]=vel[i]*1.1;
   }
 
 }
 void pista(){
   rect(0,75,1200,1);
   rect(100,75,1,325);
   
  for (int i = 0; i<400; i++){
    fill(245,255,255);
    ellipse(i*30,20,20,25);
    ellipse(i*28,30,20,25);
    ellipse(i*26,40,20,25);
    ellipse(i*24,50,20,25);
  }
            
 }
