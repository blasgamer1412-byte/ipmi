float posX; //posicion de oak
int estado, posx2,posletra, opacidad,posletra2;
PImage red, balls, titulo, poke,comp,ash,pika;
float pokeY;
float tiempo;
PFont letra;


//programa principal
void setup(){
  size(640,480);
  textSize(60);
  //FOTOS y imagenes//
  balls=loadImage("pngwing.com (4).png");
  titulo=loadImage("pngwing.com (1).png");
  red=loadImage("pngwing.com (5).png");
  poke=loadImage("pngwing.com (2).png");
  comp=loadImage("empuba.png");
  ash=loadImage("furia.png");
  letra=createFont("CopperplateGothic-Light-38.vlw",38);
  textFont(letra);

  
  //variables declaradas//
  posletra2=670;
  posx2 = 700;
  estado=0;     // Asignación de estados
  posX=640;     // Posición x de Red
  posletra=900; // Posición x inicial de las letras
  pokeY=0;
  opacidad=255;
}

void draw(){
  
  // PANTALLA 0 (INICIO) //
  if (estado == 0) {
    background(200,0,0);
    
    image(poke, 50, pokeY ,40,40);
    image(poke, 190, pokeY ,40,40);
    image(poke, 300, pokeY ,40,40);
    image(poke, 450, pokeY ,40,40);
    image(poke, 600, pokeY ,40,40);
    pokeY = pokeY + 5;
    if(pokeY > 480){ pokeY = 0; }
    
    image(balls,150 ,180 ,300,300); // Pokebola
    image(titulo,70 ,0 ,480,200);   // Titulo
    
    fill(0);
    textSize(37);
    textAlign(CENTER, CENTER); // 
    text("`PRESIONA CUALQUIER TECLA´",60,400);
  }
  
  // PANTALLA 1 (oak y pokemones)
  if(estado==1){
    background(200); // Fondo gris
    
    image(poke, 50, pokeY ,40,40);
    image(poke, 190, pokeY ,40,40);
    image(poke, 300, pokeY ,40,40);
    image(poke, 450, pokeY ,40,40);
    image(poke, 600, pokeY ,40,40);
    pokeY = pokeY + 2;
    if(pokeY > 480){ pokeY = 0; }
      //PROFESOR OAK EN MOVIMIENTO
    image(red, posX, 40, 200, 400); // 
    
    if (posX > 50) {
      posX = posX - 10;
    }
    
    if(posX <= 50){
      //LETRA EN MOVIMIENTO
      fill(120);
      rect(190,350,400,100);
    //primer texto//
      textAlign(CENTER,CENTER);
      fill(0,opacidad);
      textSize(20);
      text("bienvenido al mundo pokemon, en este juego\n tendras como amigos a los pokemon y\n tu decidiras cada momento del juego", posletra, 400);
       if (posletra >= 400) {
      posletra=posletra-10;
       }
       //
       //IMAGENES POKEMONES EN MOVIMIENTO
       image(comp,  posx2, 40, 250, 150);
         if ( posx2 >= 300){
           posx2 = posx2 - 10;}
           
       if(millis()-tiempo>=5000){
        if(posletra>= -400){
          posletra=posletra-10;}
        
         }
         //Pokemones Movimiento
         if (millis()- tiempo >= 7000){
           if (posx2 >= -300){
             posx2= posx2 - 10;}
         }
    }
  }         
}          
      
    
     
void keyPressed(){
    estado = estado + 1;
    tiempo = millis();
  }
