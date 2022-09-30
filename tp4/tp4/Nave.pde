class Nave{

 PImage nave;
 
  Nave(){
    
    nave = loadImage("nave.png");
    
    
  }
  
void dibujar(){
    nave.resize(200,200);
    image(nave, mouseX,540);
  }
   
  
}
