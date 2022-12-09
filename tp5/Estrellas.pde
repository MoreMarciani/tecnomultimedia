class Estrellas{
  float t;
  
 Estrellas(){
   t = 5;
 
 }
  void dibujar(){
   background(0);
   fill(0,10);
   rect(0,0, width,height);
   fill(255);
   noStroke();
   ellipse(random(width), random(height), t,t); 
  }

}
