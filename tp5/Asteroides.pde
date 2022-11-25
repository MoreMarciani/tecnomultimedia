class Asteroides{
  float posX, posY, vel;
  PImage asteroides;
  
Asteroides(){
  imageMode(CENTER);
  asteroides = loadImage("Aste-0"+(int (random(0,2))+".png"));
  asteroides.resize(100,100);
  posX = random(0, width);
  posY = -10;
  vel = random (3,5);
 // *poner dentro del constructor el reinicio con un if y funcion*
  
}
void dibujar(){
  this.update();
 image(asteroides, posX, posY); 
}

void reiniciarY(){
  
  if( posY > height+100){
    posX = random(0, width);
    posY = -10;
    vel = random (3,8);  
    principal.colisionando=true;
    principal.astePase ++;
    //println(principal.astePase);
  }  
}

void update(){
 posY += vel;
 
 if(posY > height){
 reiniciarY();
 }
}

  
  
}
