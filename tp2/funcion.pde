
void circulos(){
  for(int i=0;i<360; i+=30){
    pushMatrix();
    translate(width/2,height/2);
    rotate((radians(i + frameCount )));
    circle(mouseX,0,40);
    popMatrix();
  }
   for(int i=0;i<360; i+=30){
    pushMatrix();
    translate(90,90); 
    rotate((radians(i + frameCount)));
    circle(mouseX,0,40);
    popMatrix();
  }
  for(int i=0;i<360; i+=30){
    pushMatrix();
    translate(490,90); 
    rotate((radians(i + frameCount)));
     circle(mouseX,0,40);
    popMatrix();
  }
   for(int i=0;i<360; i+=30){
    pushMatrix();
    translate(90,490); 
    rotate((radians(i + frameCount)));
    circle(mouseX,0,40);
    popMatrix();
  }
   for(int i=0;i<360; i+=30){
    pushMatrix();
    translate(490,490); 
    rotate((radians(i + frameCount)));
    circle(mouseX,0,40);
    popMatrix();
  }

}
