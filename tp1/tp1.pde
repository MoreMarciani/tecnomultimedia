import processing.sound.*;
SoundFile sonidoFondo;
PImage fondo, fondo2,fondo3,fondo4;
PFont Tipo; 
String logo;
float fondoX, fondoY;
float tamX, tamY;
color azulB, blanco;
float TxSz;
float posX;
float posY;
float velX, velY;

void setup(){ 
  size(700,500);
  fondo= loadImage("bote3.jpg");
  fondo2= loadImage("foto2.jpeg");
  fondo3= loadImage("foto3.jpg");
  fondo4= loadImage("foto4.jpg");
  sonidoFondo = new SoundFile (this,"pista.wav");
  Tipo= createFont("Headliner45.ttf",70);
  textAlign(CENTER);
  
  //variables declaradas
  tamX = 750;
  tamY = 500;
  fondoX = fondoY = 0;
  TxSz = 40;
  blanco = color(255);
  azulB = color (10,92,150);
  posX= 145;
  velX = velY = 2;
}
void mousePressed(){  //boton de musica
   
   float d1= dist(mouseX,mouseY, 590,440);
   int r1= 60/2;
    if(d1 < r1){
    sonidoFondo.play();
    }     
 }
 
void draw(){
  //primera parte; pantalla 1 con logo,boton musica, presionar barrra espaciadora
  image(fondo,fondoX,fondoY,tamX,tamY);
  textFont(Tipo);
  logo= "THE LAST OF US PARTII";
   fill(azulB);
  circle(590,440,60);
  fill(blanco);
  text ( logo,130,90,190,300);
  textSize(25);
  text("Haz click aquí", 590,390);
  text("Presiona la barra espaciadora", 225,385);
  
  //segunda parte: secuencia de pantallas con segundos
  if(key== ' '){
  image(fondo,fondoX,fondoY,tamX,tamY);
  textSize(50);
  text("Director\n NEIL DRUCKMANN", 200,170); 
  if(millis()> 6000){
    image(fondo,0,0,750,500);
    text("Game Directors\n ANTHONY NEWMAN\n KURT MARGENAU",200,170);
    }
  if(millis()> 6000 && millis()< 12000){
    image(fondo,fondoX,fondoY,tamX,tamY);
    textSize(TxSz);
    text("Art Director\n ERIC PANGILINAN JOHN SWEENEY",200,170);
  }
    if(millis()> 12000 && millis()< 18000){
      image(fondo2,fondoX,fondoY,tamX,tamY);
      textSize(TxSz);
      pushStyle();
      text("Programming Directors\n TRAVIS MCINTOS\n CHRISTIAN GYRLING",posX,height);
      height -= velY;
      if(height <= 322){
        height= 322;
      } popStyle();
      pushStyle();
      text("Lead Visual effect artist\n EBEN COOK",540,height);
      height -= velY;
      if (height <= 100){
        height = 100;
      } popStyle();
    }
    if(millis()> 18000 && millis()< 24000){
      image(fondo2,fondoX,fondoY,tamX,tamY);
      textSize(TxSz);
      text("Written by\n Neil Druckmann\n Halley Gross",150,85);
      text("Additional writting\n Josh Scherr\n Ryan James",560,375);
      
    }
    if(millis()> 24000 && millis()< 30000){
      image(fondo3,fondoX,fondoY,tamX,tamY);
      textSize(TxSz);
      text("personajes", 100,290);
      text("Ellie Williams",100,340);
      text("Joel Miller", 100,380);
      text("Abby Anderson",100,420);
      text("Lev",100,460);
    }
    if(millis()> 30000 && millis()< 36000){
      image(fondo3,fondoX,fondoY,tamX,tamY);
      textSize(TxSz);
     text("Tommy Miller", 100,290); 
     text("Jesse", 100,330); 
     text("Owen Moore", 100,370); 
     text("Dina", 100,410);
      }
      if(millis()> 36000 && millis()< 42000){
      image(fondo4,fondoX,fondoY,tamX,tamY);
      textSize(TxSz);
      text("Game Directors\n ANTHONY NEWMAN\n KURT MARGENAU",350,120);
      }
         if(millis()> 42000){
      image(fondo4,fondoX,fondoY,tamX,tamY);
      textSize(40);
      text("Music by  Gustavo Santaolalla", 350,120);
      text("Additional Music by  Mac Quayle", 350,170);
      textSize(25);
     text("Para volver a empezar\n presiona enter", 550,420);
     
      }  //tercera parte: reinicio a la primera pantalla
      if (key== ENTER){
        reiniciar();  
      }
   }
 }  
 
void reiniciar(){ //reinicio de la ultima pantalla hacia la primera 
   image(fondo,fondoX,fondoY,tamX,tamY);
   fill(blanco);
   text ( logo,130,90,190,300);
   
 } 
 

    
  
  
    
  
  
  
