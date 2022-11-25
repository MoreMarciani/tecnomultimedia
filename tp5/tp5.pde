//https://youtu.be/RjjUhmxfViw


Principal principal;
//Pantallas pantallas;
String estado, condicion;

void setup(){
  size(600,600);
  //´para la logica de estados
  estado = "inicio";
  condicion = "ganar";
  condicion = "perder";
  principal = new Principal();
 // pantallas = new Pantallas();
  
  
}

void draw(){

  principal.dibujar();
  principal.colisiones();
//  pantallas.ganar();
//  principal.pantallas();
  
 //principal.principal

}
