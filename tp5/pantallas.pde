/*class Pantallas{
  String estado, condicion;
 // Estrellas estrellas;
  PImage logo, boton;
  
  
 Pantallas(){
   
   estado = "inicio";
   estado = "jugar";
   condicion = "perdiste";
   condicion = "ganaste";
  // estrellas = new Estrellas();
  logo = loadImage("logo.png");
   
 }
 void dibujar(){
   if(estado.equals("inicio")){
     background(0);
    // estrellas.dibujar();
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
     
     
   //estado de instrucciones
   if(estado.equals("instrucciones")){
       background(0);
     //  estrellas.dibujar();
       pushStyle();
       fill(#D1D1D1);
       textSize(50);
       text("Instrucciones", 300,100);
       text("Oh no! nuestra nave está pasando por un cordón de asteroides \n hay que ayudarlo a pasar los 30 asteroides para ganar",300,300);
       popStyle();
       
   }
   
   
   
  
 }
 
 void ganar(){
   
   //estado de ganaste
   if(condicion.equals("ganaste")){
    background(0);
   // estrellas.dibujar();
    textSize(100);
    text("ganaste",300,300);
    }
 }
    
 void perder(){
   
    if(condicion.equals("perdiste")){
    background(0);
    //estrellas.dibujar();
    textSize(100);
    text("perdiste",300,300);
    }
   
 }
 
 void acceder(){
    if(estado.equals("inicio") && mouseX > 225 && mouseX < 225 + 150 && mouseY > 325 && mouseY < 325 + 50 ){
     estado = "Jugar";
   }
   if(estado.equals("inicio") && mouseX > 225 && mouseX < 225 + 150 && mouseY > 390 && mouseY < 390 + 50 ){
    estado = "instrucciones";
   }
  
 }
 
 void condiciones(){
   if(key == ENTER){
     if(condicion.equals("perdiste") || condicion.equals("ganaste")){
       reinicioInicio();
     } 
   }
   
   
 }
 void reinicioInicio(){
   estado = "inicio"; 
    
  }
 
 }*/
