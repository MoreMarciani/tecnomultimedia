class Principal {

  
  Estrellas estrellas;
  Juego juego; 
  String estado, condicion;
  PImage logo, botonVolver, botonJugar, botonInstrucciones, imgCargando, imgGanaste, imgPerdiste, imgInstrucciones, imgCreditos;

  Principal() {
    //variables
    estado = "inicio";
    condicion = " ";
    estrellas = new Estrellas();
   
    //imagenes
    logo = loadImage("logo.png");
    imgCargando = loadImage("cargando.png");
    imgGanaste = loadImage("ganaste.png");
    imgPerdiste = loadImage("perdiste.png");
    imgInstrucciones = loadImage("instrucciones.png");
    imgCreditos = loadImage("creditos.png");
    botonVolver = loadImage("volver.png");
    botonJugar = loadImage("jugar.png");
    botonInstrucciones = loadImage("botonInstrucciones.png");

    // sonido
  }


  void pantallas() {
    estrellas.dibujar();
    /*if(sonido(reemplaza variable).isPlaying()== false){ //para sonido  // aca reproducir el sonido
     sonido.play();
     sonido.loop();
     sonido.jump(0.5); 
     }*/


    //estado de inicio 
    if (estado.equals("inicio")) {
      imageMode(CENTER);
      image(logo, width/2, height/4, logo.width/3, logo.height/3);
      //BOTON JUGAR
      imageMode(CORNER);
      image(botonJugar, 200, 325, botonJugar.width/12, botonJugar.height/12);
      // BOTON INSTRUCCIONES
      image(botonInstrucciones, 200, 410, botonInstrucciones.width/40, botonInstrucciones.height/40 );
    }
    
    // estado instrucciones
    if (estado.equals("instrucciones")) {
      //  background(0);
      imageMode(CORNER);
      image(imgInstrucciones, 0, 0, width, height);
    }
    //estado juego
    if (estado.equals("juego")) {
      //  background(0);
      juego.dibujar();
      juego.colisiones();
      juego.actualizar();
    }

    // estado ganaste
    if (estado.equals("ganaste")) {
      imageMode(CORNER);
      image(imgGanaste, 0, 0, width, height);
    }


    // estado perdiste
    if (estado.equals("perdiste")) {
      //  background(0);
      imageMode(CORNER);
      image(imgPerdiste, 0, 0, width, height);
    }
    //estado creditos
    if (estado.equals("creditos")) {
      imageMode(CORNER);
      image(imgCreditos, 0, 0, width, height);
      image(botonVolver, 200,480, botonVolver.width/12, botonVolver.height/12);
      
    }
  }


  void interaccion() { // para acceder a los estados
    if (estado.equals("inicio") && mouseX > 200 && mouseX < 200 + 150 && mouseY > 325 && mouseY < 325 + 50 ) {
      estado = "juego";
      //aca que este el sonido cuando hago click el boton
      juego = new Juego();
    }
    if (estado.equals("inicio") && mouseX > 200 && mouseX < 200 + 150 && mouseY > 410 && mouseY < 410 + 50 ) {
      estado = "instrucciones";
    }
      if (estado.equals("creditos") && mouseX > 200 && mouseX < 200 + 150 && mouseY > 480 && mouseY < 480 + 50 ) {
      estado = "inicio";
    }
  }

  void condiciones() { //reinicios o acceder a otros estados
    if (keyCode == ' ') {
      if (estado.equals("perdiste") || estado.equals("creditos") || estado.equals("instrucciones")) {
         estado = "inicio";
      }
      if (estado.equals("ganaste")) {
        estado = "creditos"; 
      }
    }
  }

} 
   
