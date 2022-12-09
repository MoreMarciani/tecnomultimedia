class Juego{
 
  Nave nave;
  Asteroides [] asteroides; 
  int intentos;
  boolean colisionando;
  int asteTope;
  int intentosTope;
  int astePase; 
  PFont tipografia;
  SoundFile choque;
  
  
Juego(){
  int cant = 3;
  intentos = 2;
  asteTope = 50;
  intentosTope = 0;
  asteroides = new Asteroides[cant];
  nave = new Nave();
  tipografia = createFont("SpaceComics.ttf", 20);


  
  //inicializar el array de asteroides
  for(int i=0; i < asteroides.length; i++){
    asteroides[i] = new Asteroides();
  }
  
}

 void dibujar(){
   nave.moverNave();
   textAlign(CENTER);
   textFont(tipografia);
   text("VIDA:" + intentos,70,50);

   //pregunta de astetope//
  if( astePase >= asteTope){
  //  println("ganaste"); //reemplazar por pantalla de ganaste 
    principal.estado = "ganaste";
  }
  //pregunta de intentosTope
   if(intentos<= intentosTope){
     //println("perdiste"); //reemplazar por perdiste
     principal.estado = "perdiste";
   }
   
   //para dibujar asteroides
   for(int i = 0; i < asteroides.length; i++){
     asteroides[i].dibujar();
   }

 } 


 void colisiones(){
     for(int i = 0; i < asteroides.length; i++){
      if(dist(asteroides[i].posX,asteroides[i].posY, nave.PosX, nave.PosY) < 100 && colisionando == true){
      intentos--;
      choque.play();
    // choque.play();
      colisionando = false;
      }
     }    
    }
    
 void actualizar(){
  for(int i = 0; i < asteroides.length; i++){
    asteroides[i].update();
  }
   
 }

}
