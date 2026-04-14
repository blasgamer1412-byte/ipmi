PImage miImagen;
void setup(){ //codigo que se repita una sola vez
size(800,400);// ancho y alto de la imagen
miImagen=loadImage("16037-1.jpg"); //poner imagen en el programa
strokeWeight(1);
}
void draw(){
background(100, 149, 237);//color del cielo o fondo principal
 image(miImagen, 0,0,400,400);// y, x, ancho ,alto de mi imagen
 fill(219, 93, 2); //color principal de los triangulos 
  stroke(1); //color principal de las lineas
  
 triangle(655,240,695,151,742,240);//primer triangulo
 line(695,151,686,205);// linea del primer triangulos//
 
 triangle(530,235,595,89,713,238);//segundo triangulo
 line(595,89,566,224);//linea del segundo triangulo//
 
 triangle(450,235,508,139,576,235);// tercer triangulo//
 line(508,139,484,235);//linea del tercer triangulo//
 
 rect(400,235,400,400); //primer rectangulo 
 fill(147,55,12);//color del primer rectangulo
  rect(400,235,610,40);//2do rectangulo
  
 fill(219,93,2); //color de los triangulos pequeños
 triangle(484,246,506,197,532,246);//primer triangulo pequeño
 line(496,246,506,197);//linea del primer triangulo pequeño
 
 triangle(540,246,560,197,582,246);//segundo triangulo pequeño
 line(560,197,550,246);//linea del segundo triangulo pequeño
 
 fill(191, 91, 21);//color de segundo rectangulo
 rect(400,346,400,400);//sengundo rectangulo
 
 
}
