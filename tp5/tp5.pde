//https://youtu.be/RjjUhmxfViw
import processing.sound.*;
SoundFile choque, click, fondo;

Principal principal;


void setup(){
  size(600,600);
  principal = new Principal();
  choque = new SoundFile(this, "choque.mp3");
 click = new SoundFile(this, "click.mp3");
}

void draw(){

  principal.pantallas();


}

void mouseClicked(){
  principal.interaccion();
 // click.play();
 click.play();
 
  
}

void keyPressed(){
  principal.condiciones();
 
}
