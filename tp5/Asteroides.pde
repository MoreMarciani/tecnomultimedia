class Asteroides{
  float posX, posY, vel;
  PImage asteroides;
  Juego juego;
  
Asteroides(){

  imageMode(CENTER);
  asteroides = loadImage("Aste-0"+(int (random(0,2))+".png"));
  asteroides.resize(100,100);
  posX = random(0, width);
  posY = -10;
  vel = random (3,5);
}

void dibujar(){
  this.update();
 image(asteroides, posX, posY); 
}

void reiniciarY(){
  if( posY > height+100){
    posX = random(0, width);
    posY = -10;
    vel = random (3,5);  
   principal.juego.colisionando=true;
   principal.juego.astePase ++;
  }  
}

void update(){
 posY += vel;
 
 if(posY > height){
 reiniciarY();
 }
}

}
