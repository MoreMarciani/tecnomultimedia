class Principal{
 
  Nave nave;
  //Pantallas pantallas;
  Asteroides [] asteroides; //arreglo de dos tipos de asteroides (img diferentes)
  Estrellas estrellas;//para estrellas 
  String estado, condicion;
  int intentos;
  PImage logo, boton;
  boolean colisionando;// si es true que solo quite una vida. no va el menos menos. 
  int asteTope;
  int intentosTope;
  int astePase; // cuantos asteroides pasaron con el tope de 30
  
 
  
Principal(){
  int cant = 3;
  intentos = 2;
  asteTope = 30;
  intentosTope = 0;
  asteroides = new Asteroides[cant];
  estado = "inicio";
  estado = "juego";
  condicion = "ganaste";
  condicion = "perdiste";
 estrellas = new Estrellas();
 nave = new Nave();
 //pantallas = new Pantallas();
 
 logo = loadImage("logo.png");
  
  
  //inicializar el array de asteroides
  for(int i=0; i < asteroides.length; i++){
    asteroides[i] = new Asteroides();
  }
  
}
  
  
 void dibujar(){
   //Para el fondo//
   background(0);
   estrellas.dibujar();
   nave.moverNave();
   textAlign(CENTER);
   textSize(20);
   text("Vida:" + intentos,60,50);

  //estado de inicio 
 /* if(estado.equals("inicio")){
     background(0);
     estrellas.dibujar();
     image(logo, 200,300);
     if(mouseX > 225 && mouseX < 225 + 150 && mouseY > 325 && mouseY < 325 + 50){
       fill(#D1D1D1); 
     }
       else {
         fill(#AFAFAF);
       }
       rect(225,325,50,50);
       fill(#0726E8);
       text("Jugar", 300,350);
       
  //para instrucciones
      if(mouseX > 225 && mouseX < 225 + 150 && mouseY > 390 && mouseY < 390 + 50){
      fill(#D1D1D1); 
      }
      else {
      fill(#AFAFAF);
      }
       rect(225,390,50,50);
       fill(#0726E8);
       text("Instrucciones", 300,350);
     }
   // para acceder a las instrucciones
     if(estado.equals("instrucciones")){
       background(0);
       estrellas.dibujar();
       pushStyle();
       fill(#D1D1D1);
       textSize(50);
       text("Instrucciones", 300,100);
       text("Oh no! nuestra nave está pasando por un cordón de asteroides \n hay que ayudarlo a pasar los 30 asteroides para ganar",300,300);
       popStyle();
     }
    // para acceder a ganaste
    if(condicion.equals("ganaste")){
    background(0);
    estrellas.dibujar();
    textSize(100);
    text("ganaste",300,300);
    }
    
    
    //para acceder a perdiste
    if(condicion.equals("perdiste")){
    background(0);
    estrellas.dibujar();
    textSize(100);
    text("perdiste",300,300);
    }*/
    
     //pregunta de astetope
  if( astePase >= asteTope){
    println("ganaste"); //reemplazar por pantalla de ganaste 
   // pantallas.ganar();
    if(condicion.equals("ganaste")){
    background(0);
    estrellas.dibujar();
    textSize(100);
    text("ganaste",300,300);
    }
  }
  //pregunta de intentosTope
   if(intentos<= intentosTope){
     println("perdiste"); //reemplazar por perdiste
    // pantallas.perder();
     perder();
     
   }
   
   //para dibujar asteroides
   for(int i = 0; i < asteroides.length; i++){
     asteroides[i].dibujar();
   }

 } 

  void perder(){
    if(condicion.equals("perdiste")){
    background(0);
    estrellas.dibujar();
    textSize(100);
    text("perdiste",300,300);
    }
    
    
  }
 
/* void mousePressed(){
   if(estado.equals("inicio") && mouseX > 225 && mouseX < 225 + 150 && mouseY > 325 && mouseY < 325 + 50 ){
     estado = "Jugar";
   }
   if(estado.equals("inicio") && mouseX > 225 && mouseX < 225 + 150 && mouseY > 390 && mouseY < 390 + 50 ){
    estado = "instrucciones";
   }
 }
 
 void condiciones(){
   if(keyCode == ' '){
     if(condicion.equals("perdiste") || condicion.equals("ganaste")){
       reinicioInicio();
     }
     
   }
   
   
 }
   
  void reinicioInicio(){
   dibujar(); 
    
  }*/
   
  

 

 void colisiones(){
     for(int i = 0; i < asteroides.length; i++){
      if(dist(asteroides[i].posX,asteroides[i].posY, nave.PosX, nave.PosY) < 100 && colisionando == true){
     // println("colision");
      intentos--;
      colisionando = false;
      //println(intentos);
      }
      
      
      }    
     }
   
 
 void actualizar(){
  for(int i = 0; i < asteroides.length; i++){
    asteroides[i].update();
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

}}




// if(principal.estado.equals("inicio")){
   

  
//  if(principal.estado.equals("juego")){
    
