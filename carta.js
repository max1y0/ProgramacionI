carta = {
  valor: 7,
  palo:2,
  show(){
    if (this.palo == 1 ) {
      fill(60,60,240)
    }
    if (this.palo == 2 ) {
      fill(240,240,60)
    }
    rect(100,50,200,300,40)
    textSize(99)
    fill(20)
    text(this.valor,170,170)
    
  }
  generar(){
  
  }
}
function setup() {
  createCanvas(400, 400);
  noStroke()
}

function draw() {
  carta.show()
  
}


