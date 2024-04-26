PImage miPaisaje;

void setup(){
  
size(800,400);
background(96,204,242,0.89);
miPaisaje = loadImage("playa.jpg");

}

void draw(){
  
image(miPaisaje,0,0);

noStroke();//isla
fill(0,54,52);
quad(574,178,800,172,800,182,559,181);

noStroke();//fondo mar
fill(0, 115, 191);
rect(400,181,410,13);

noStroke();//agua clara
fill(65, 220, 252);
quad(398,196,799,196,798,314,399,264);

noStroke();//agua oscura
fill(101, 183, 224);
ellipse(700,240,410,54);

noStroke();//media lancha
fill(22,70,107);
quad(397,197,440,197,438,206,398,217);
noStroke();
fill(255);
rect(398,195,43,3);

noStroke();//lancha a la derecha
fill(255);
quad(755,189,800,197,800,205,770,205);
noStroke();
fill(255);
rect(778,185,25,3);

//lancha del medio
noStroke();
fill(255);
quad(466,210,569,228,569,240,485,240);
noStroke();
fill(2,25,138);
rect(493,195,50,5);

noStroke();//tronco
fill(171, 147, 71);
quad(430,169,443,174,399,249,398,219);

noStroke();//2do tronco
fill(209, 124, 0);
quad(427,122,442,125,441,176,429,170);

noStroke();//2da hoja 
fill(42, 168, 23);
quad(455,82,525,93,539,143,429,123);



fill(0, 179, 6);//3era hoja
triangle(437,134,489,145,489,121);
fill(0, 179, 6);
quad(488,122,544,155,537,217,488,143);

fill(0, 179, 6);//1era hoja
triangle(427,126,434,58,467,65);
triangle(460,36,434,57,465,64);
fill(1, 209, 8);
triangle(461,36,491,62,472,116);
 
 noStroke();//arena oscura
 fill(209, 198, 166);
 quad(398,262,797,315,799,397,399,300);
 
 noStroke();//arena clara
 fill(227, 222, 209);
 triangle(397,285,799,399,401,399);
 

 //rama del medio
 fill(207, 178, 110);
 quad(642,366,711,318,720,324,652,373);
 quad(712,319,721,296,733,298,719,323);
rect(721,291,40,8);
quad(760,291,781,322,773,330,752,297);

 
 noStroke();//3 rama
 fill(163, 139, 82);
 quad(731,357,763,342,776,352,733,372);
 fill(163, 139, 82);
 rect(733,359,10,20);
 
 noStroke();//rama pequeña
 fill(163, 139, 82);
 rect(710,371,8,14);
 quad(704,358,718,371,710,371,702,362);

fill(207, 178, 110);
 rect(781,298,5,40);
 

  noStroke();//rama en la arena
 fill(138,118,72);
 quad(763,343,800,299,800,392,784,362);
 
 
 
 fill(50);//punto negro 
 ellipse(793,263,11,13);
 
 fill(50);//izquierda persona
 ellipse(436,240,5,9);
 fill(255, 210, 144);
triangle(435,243,442,250,431,248);

noStroke();
fill(153, 60, 10);
triangle(401,46,415,101,404,96);//media palmera

fill(88);//sombra
triangle(396,287,420,299,397,298);
triangle(398,298,436,315,397,308);

 
 



println( mouseX +"/" + mouseY);
}
