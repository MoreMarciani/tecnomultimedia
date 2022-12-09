import processing.sound.*;
SoundFile choque,clic,fondo;
Principal principal;


void setup(){
  size(600,600);
  principal = new Principal();
  clic = new SoundFile(this, "click-mouse.mp3");
  choque = new SoundFile(this, "choque.mp3");
  fondo = new SoundFile(this, "fondo-Musica.mp3");

 
}

void draw(){

  principal.pantallas();
    


}

void mouseClicked(){
  principal.interaccion();

 
  
}

void keyPressed(){
  principal.condiciones();
 
}
