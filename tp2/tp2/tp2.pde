
String estado;  
PImage pantalla1;
PImage pantalla2;
PImage pantalla3;


String  texto1;
 String  texto2;
 String  texto3; 
  
 float  moviy1 = height + 90;
  float  velocidad1 = -1;
  
  float movix2 = 0;               
  float moviy2 = height ;
  float velocidad2 = 1;
   
   int alpha ;
    int ColorDelBoton;
  float movix3 = width;
  float moviy3 = height/3 ;
  float velocidad3 = 1;
  
 int puntax3 = 504 ;
  int puntay3 = 393;
  int ancho3 = 80;
  int alto3 = 40 ;
  int tamaño = 20;
  color colortext3 = 10;
  

int contador3 = 0;
  
   
void setup() {
  size( 640,480) ; 
  alpha = 255;
  textSize( 29);
  
 texto1 = " DAMAS \n \n Las damas es un juego de mesa para dos jugadores\n Se divide en dos,piezas oscuras y  piezas claras \n Consiste en mover estratégicamente tus piezas para\n  capturar las del oponente y bloquear sus movimientos.\n Es anticipar los movimientos del oponente y \n planificar tus propias jugadas para ganar ventaja.";
 
 texto2 = "REGLAS \n \n Las piezas se mueven en diagonal hacia adelante en \n las casillas oscuras. \n  Se captura saltando sobre una pieza enemiga\n adyacente si la casilla detrás de ella está vacía.\n  Si no puede mover ninguna pieza, pierde la partida.";
  
  texto3 = "¿COMO SE GANA? \n \n Se gana al capturar todas las piezas del oponente \n o al bloquearlas para que no puedan moverse.\nTambién se puede ganar si el oponente no \n puede realizar ningún movimiento válido.";
 
  
    pantalla1 = loadImage("damas1.jpg");
    pantalla2 = loadImage("damas2.jpg");
    pantalla3 = loadImage("damas5.jpeg");
   

    estado = "1eraPantalla";  
   
     ColorDelBoton = color(200); 
}

void draw() {

  moviy1 = velocidad1 + moviy1;
  
  if ( estado.equals  ("1eraPantalla") ) { //1era
  image( pantalla1 , 0 , 0 );
  fill( 255 );
 textAlign( CENTER , TOP );
   text( texto1 , width/2 , moviy1 ); 
         }
            
    if ( frameCount/60  >=  8) {            //eventoDeTiempo
      estado = "2daPantalla"; 
 
         }
  if ( estado.equals( "2daPantalla" ) ){   //2da
    image( pantalla2 , 0 ,0 );
     textAlign( CENTER );
      fill(255,alpha);  
    movix2 = movix2 + velocidad2; 
   text( texto2 , movix2, height/3 );
   
       if (movix2 >= 320) { 
       if (alpha > 2) {
          alpha -= 0.1;
                      }      
      else {
          alpha = 5;
                    }
       }
   if ( frameCount/60 >=  20 )              //eventoDeTiempo
     estado = "3eraPantalla" ;

     }

    if ( estado.equals("3eraPantalla") ){ //3era
       image( pantalla3 , 0 , 0 );   
       fill( colortext3);
       textAlign(CENTER,TOP);
       textSize(20);
       text( texto3,movix3 , moviy3);
        movix3  = movix3 - velocidad3; 
        contador3= contador3 + 1;
        movix3 = width - contador3;
        moviy3 = height/2 - 270 + contador3;
        
     if (moviy3 > 200) {
     moviy3 = height/2 - 50;
     velocidad3 = -1;
    colortext3 =  color (0,200,100);
                 } 
    
      //Botón
      fill( ColorDelBoton);
       rect( puntax3 , puntay3, ancho3, alto3 );
      fill( 0 , 0 , 100 );
      textSize( 18 );
      text( "Reiniciar", 542 , 406 );
       
                              }
                      }

  void mousePressed(){
 if ( estado.equals("3eraPantalla")&& mouseX > puntax3 && mouseX < puntax3 + ancho3 && mouseY > puntay3 && mouseY < puntay3 + alto3 ) {
   
   estado = "1eraPantalla" ;     
 
        frameCount  = 0;
       textSize( 29);    
       contador3 = 0;
    moviy1 = height + 90;
    movix2 = 0;    
    moviy2 = height ;
    alpha = 255;
    movix3 = width;
    moviy3 = height/3;
   colortext3 = 10;
    
   }
  
 
 }   
   
     
  
