//https://youtu.be/EQPaiurqSVM  video de la explicacion

PImage img; // imagenes
PImage img2;
color fondoColor= color(154, 205, 50);
float tamañoCirculo;
color colorCirculoNegro = color (0);
color colorCirculoVioleta = color(161, 3, 161);
color colorCirculoBlanco = color(255);

 
void setup() {
  size(800, 400);
  img = loadImage("opArt.jpg");
  image(img, 0, 0);
  img2= loadImage("op3.png");
}

void draw() {

  background(fondoColor);
  noStroke(); 
  circulos();
println( mouseX +"/" + mouseY);
}



void mousePressed() {
  
  if (dist(mouseX, mouseY, 597,208 ) < 50) {
   fondoColor = color(0);
   colorCirculoVioleta= color(0);
    colorCirculoNegro= color(random(255),random(255),random(255));
    colorCirculoBlanco = color(random(255),random(255),random(255));
    circulos();
  } 
  
  else{
  
  fondoColor = color(154, 205, 50);
   colorCirculoVioleta= color(161, 3, 161);
    colorCirculoNegro= color(0);
    colorCirculoBlanco = color(255);
    circulos();
  }
}
