class Espacio{
 //PROPIEDADES 
 PImage saturno, jupiter;
 asteroides aste01, aste02;
 Nave nave;
 Estrellas estrellas;
 
 //constructor
 Espacio(){
   saturno = loadImage("saturno.png");
   jupiter = loadImage("jupiter.png");
   
   aste01 = new asteroides(200, 200, random(3,3));
   aste02 = new asteroides(300, 200, random(3,6));
   nave = new Nave();
   estrellas = new Estrellas();  
 }
  //metodos
  void dibujar(){
    //fondo
    background(0);
    
    estrellas.dibujar();
    saturno.resize(400,380);
    image(saturno,70,380);
    image(jupiter,500,70);

    //asteroides
    aste01.dibujar();
    aste01.mover(random(3,3));
    aste02.dibujar();
    aste02.mover(random (3,6));
    
    //nave
    nave.dibujar();     
  }
  
}
