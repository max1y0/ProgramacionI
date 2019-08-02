// Tamaño actual de la gota
int tamActalGota;

// Tamaño maximo que tendra la gota
float tamMaxGota;

// Posicion de la gota en el plano
float posCircY;
float posCircX;

void setup(){
  size( 600, 600 );
  background(10,150,200);
  
  // Crea gota inicial
  tamActalGota = 0;
  tamMaxGota = floor( random( 60, 80) );
  posCircY = 100;
  posCircX = 100;
  noStroke();
}

void draw(){
  
  if( ( frameCount % ( tamMaxGota ) ) == 0 ){
      // Borrar gota de pantalla (pisa con color de fondo)
      fill(10,150,200);
      ellipse( posCircX, posCircY, tamActalGota+11, tamActalGota+11);
      
      // Crea nueva gota
      tamMaxGota = floor( random( 60, 90) );
      posCircX = random( 0, width );
      posCircY = random( 0, height );
      tamActalGota = 0;
  }
  
  // Dibujar circulo externo
  fill( 40, 190, 230 );
  ellipse( posCircX, posCircY, tamActalGota, tamActalGota );
  
  // Dibuja circulo interno
  fill( 10, 150, 200 );
  ellipse( posCircX, posCircY, tamActalGota-10, tamActalGota-10); 
  
  tamActalGota = tamActalGota + 1;
  
}
