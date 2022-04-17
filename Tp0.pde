void setup()
{
  size(600,600);
  background(1,3,67);
  textSize(40); 
}
void draw()
{//LUNA
background(1,3,67);
//primer ellipse grande(luna)
fill(230);
ellipse(300,600,600,520);
//elipses chicos para los crateres
noStroke();
fill(150);
ellipse(160,450,100,50);
fill(150);
ellipse(240,600,100,100);
fill(150);
ellipse(470,450,110,90);

//nave espacial
fill(210,50,50);
triangle(40,145,160,120,160,160);
fill(250);
rect(160,130,10,10);
rect(160,140,10,10);
quad(100,130,100,140,130,135,125,125);

//ASRONAUTA
//cabeza
fill(230);
ellipse(300,130,100,100);
fill(0);
ellipse(300,130,100,70);
//cuerpo 
fill(230);
rect(255,175,90,120);
//brazo izq
quad(230,180,210,250,250,250,255,175);
//brazo der
quad(345,175,350,250,390,250,365,180);
//piernas
rect(255,270,35,100);
rect(310,270,35,100);
//manos
fill(150);
rect(215,250,30,15,4);
rect(355,250,30,15,4);
//rectangulo del casco
fill(230);
rect(248,120,5,20);
rect(348,120,5,20);
//aparto en la cintura
fill(150);
rect(255,255,90,10);
rect(290,245,40,30,4);

//estrellas
fill(255);
ellipse(400,130,10,10);
ellipse(450,115,20,20);
ellipse(420,320,20,20);
ellipse(50,20,10,10);
ellipse(70,270,10,10);
ellipse(550,115,10,10);
ellipse(520,405,10,10);
ellipse(450,115,10,10);
ellipse(200,300,20,20);
ellipse(60,380,20,20);
ellipse(180,50,10,10);
ellipse(530,165,10,10);
ellipse(355,45,10,10);
ellipse(490,225,10,10);
ellipse(70,215,20,20);
ellipse(130,335,10,10);
ellipse(485,35,10,10);
ellipse(445,255,10,10);
ellipse(560,300,20,20);
ellipse(150,220,10,10);
ellipse(560,60,10,10);
ellipse(100,85,20,20);
ellipse(207,158,10,10);
ellipse(445,184,10,10);

//DETALLES Y SOMBRAS
//casco
fill(245);
ellipse(330,145,20,10);
//TRAJE
//brazo der
fill(200);
quad(230,180,210,250,230,250,230,180);
//brazo izq
quad(345,175,350,250,360,250,345,175);
//cuerpo + pierna der
quad(255,175,255,345,267,340,255,175);
//botones en el aparato de la cintura
fill(0,245,0);
ellipse(300,255,10,10);
fill(245,0,0);
ellipse(320,255,10,10);
//nave
fill(157,10,10);
quad(40,145,160,160,160,150,40,145);

//zapatos
fill(150);
noStroke();
arc(276,343,45,45,PI,PI+QUARTER_PI);
arc(276,343,45,45,PI+QUARTER_PI,TWO_PI);
arc(326,343,45,45,PI,PI+QUARTER_PI);
arc(326,343,45,45,PI+QUARTER_PI,TWO_PI);
}



  
  
  
