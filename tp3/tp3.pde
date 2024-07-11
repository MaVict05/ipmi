//https://youtu.be/nvMCTmurXQA video 
 
  PImage img; // imagenes
 PImage img2;
 color fondoColor= color(154, 205, 50);
 float tamañoCirculo=900/50*0.6;
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
  tamañoCirculo =  calcularTamañoCirculos(mouseX, mouseY, width, height);   // cambia el tamaño de los cirulos con el mouse
  circulos(900/50, tamañoCirculo, 600, height /2);
  println( mouseX +"/" + mouseY);
}
boolean cambiarFondo(color nuevoFondo, color nuevoCirculoVioleta, color nuevoCirculoNegro, color nuevoCirculoBlanco) {
  fondoColor = nuevoFondo;
  colorCirculoVioleta = nuevoCirculoVioleta;
  colorCirculoNegro = nuevoCirculoNegro;
  colorCirculoBlanco = nuevoCirculoBlanco;
  return true;
}


void mousePressed() {
  if (dist(mouseX, mouseY, 597, 208) < 75) {
    cambiarFondo(color(0), color(0), color(random(255), random(255), random(255)), color(random(255), random(255), random(255)));
    tamañoCirculo = calcularTamañoCirculos(mouseX, mouseY, width, height);         //  el tamaño de los círculos
    circulos(900 / 50, tamañoCirculo, 600, height / 2);
  }
}

void keyPressed() {

  if (key == 'r') {
    cambiarFondo(color(154, 205, 50), color(161, 3, 161), color(0), color(255));
    mouseY = 0;
    circulos(900/50, 900/50 * 0.6, 600, height / 2);
  }
}
