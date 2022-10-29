/*class Fondo{
  PImage saturno, jupiter, planeta;
  Nave nave;
  Asteroides [] asteroides; //arreglo de dos tipos de asteroides (img diferentes)
  Estrellas estrellas;
  
Fondo(){
  int cant = 30;
  asteroides = new Asteroides[cant];
  
  //inicializar el array de asteroides
  for (int i = 0; i = cant.legth; i++){
    asteroides[i] = new Asteroides();
    
  }
  
}
  
  
 void dibujar(){
   //Para el fondo//
   background(0);
   -cargar imagenes de los planetas
   estrellas.dibujar();
   
   //para los personajes (nave y asteroides)//
   nave.dibujar();
   nave.moverNave();
   //
   asteroides.dibujar();
   asteroides.moverAste();
 
 } 
}



class Estrellas{
  float t;
  
 Estrellas(){
   t = 5;
 
 }
  void dibujar(){
    
   fill(0,10);
   rect(0,0, width,height);
   fill(255);
   noStroke();
   ellipse(random(width), random(height), t,t); 
  }

}*/
