class Nave{
  PImage nave;
  float PosX, PosY;
Nave(){
   imageMode(CENTER);
   nave = loadImage("nave.png");
   nave.resize(200,200);
  
}

void moverNave(){
  image(nave, PosX, PosY);
  PosX = mouseX;
  PosY = 520;
  
}
void colision(){
  
}
  
}
