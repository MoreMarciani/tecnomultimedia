//https://youtu.be/CG_gjSUJiPY
//no pude sacarle la marca de agua

void setup(){
 size(600,600); 
  background(0);
  textSize(30); 
}

void draw(){
  //PRIMERA CAPA: Fondo
  background(0);
  for(int x=0;x<=width; x+=30){
    for(int y=0; y<=height; y+=30){
      //degradee de opacidades con map
     float op= map(mouseX,0,600,255,120);
      fill(random(0,255), random(0,0), random(0,0),op);
      ellipse(x,y,15,15);
    }
  } 
 //SEGUNDA CAPA: Interacción con las figuras
  float op= map(mouseX,0,600,255,90);
     fill(240,0,0,op);
     circulos(); 
}
//REINICIO
void keyPressed(){
 if(key==' '){
   mouseX=0;
 }
  
}
