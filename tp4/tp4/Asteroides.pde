class asteroides{
  
  float posX, posY, tam, velX, velY;
  PImage aste01;
  
  asteroides(float posX_ , float posY_ , Float velX_){
    posX = posX_;
    posY = posY_;
    velX = velX_;
    aste01 = loadImage("Aste01.png");
     
  }
  
  
  //Metodos
  void dibujar(){
      imageMode(CENTER);
      aste01.resize(120,120);
      image(aste01, posX, posY);
        
  }
  void reiniciarX(){
   posX = random( width, height) + 150 ;
  }
  
  void mover(float velX){
     posX -= velX;
       if(posX <= 0){ 
        reiniciarX();
  }
  
  }
}
