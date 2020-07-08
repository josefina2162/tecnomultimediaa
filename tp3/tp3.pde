//TP3

//DECLARO VARIABLES INICIALES 

//IMAGENES 
PImage prision;
PImage preso;
PImage ciudad;
PImage container; 
PImage barrilv; 
PImage barriln; 
PImage camion;
PImage patrulla;
PImage policial;
PImage policia;
PImage rejas;
PImage flecha ;
PImage flechaderecha ;
PImage embajador; 
PImage oficina;
PImage nube; 
PImage nube2;
PImage barriles;
PImage fabrica;
PImage signo;
PImage boletoa;
PImage boletob; 
PImage barco;
PImage mexico;
PImage china; 

//FUENTE
PFont miletra; 

//VARIABLES 
String estado; 
float posXP, posXC;
int RESET = 0;
int CANTIDAD_DE_MS = 3 * 1000;

void setup () {

  size (800, 600); 
  background (255); 

  //CARGO IMAGENES  
  prision = loadImage ("prision.jpg");
  container = loadImage ("ultimas.png"); 
  preso = loadImage ("preso.png"); 
  ciudad = loadImage ("fabrica.jpeg"); 
  barriln = loadImage ("barriln.png"); 
  barrilv = loadImage ("barrilv.png"); 
  barriles = loadImage ("barriles.png");
  camion = loadImage ("camion.png"); 
  policial = loadImage ("policial.png");
  patrulla = loadImage ("patrulla1.png");
  rejas = loadImage ("rejas.jpeg");
  flecha = loadImage ("flecha.png");
  flechaderecha = loadImage ("flechaderecha.png");
  embajador = loadImage ("embajador.png"); 
  oficina = loadImage ("oficina.jpg");
  policia = loadImage ("policia.png");
  nube = loadImage ("nube.png");
  nube2 = loadImage ("nube2.png");
  fabrica = loadImage ("fabrica2.jpg");
  signo = loadImage ("singo.png");
  boletoa = loadImage ("boletoA.png");
  boletob = loadImage ("boletoB.png"); 
  china = loadImage ("china.jpg"); 
  mexico = loadImage ("mexico.jpg"); 
  barco = loadImage ("barco.png"); 


//CARGO FUENTE

  miletra = createFont ("BebasNeue-Regular.ttf", 50);


//VALORES INICIALES Y CARACTERISTICAS
  imageMode (CENTER); 
  textFont (miletra); 
  textAlign (CENTER, CENTER); 
  posXP= 0;
  posXC = 0;
  estado = "titulo" ;
}

void draw () {

  background (255);

// CICLO IF PARA MANEJAR ESTADOS

  if (estado.equals ("titulo")) {

    image (prision, 400, 300);
    fill (0);
    textFont (miletra);
    textSize (50);
    text ("Escapar del engaño", 400, 50); 
    fill (250, 3, 3);
    text ("Escapar del engaño", 404, 54);
    textSize (30);
    fill (0); 
    text ("Presione la barra espaciadora para comenzar", 400, 550, 10);
  } else if (estado.equals ("patrulla") ) {

    image (prision, 400, 300);
    image (patrulla, 1500+ posXP, 460, 250, 250);
    image (flecha, 50, 400, 50, 50);
    textSize (12);
    text ("Press", 50, 400);
  } else if (estado.equals ("rejas") ) {
    background (50);
    image (rejas, 400, 300, 800, 600);
    fill (250, 3, 3);
    rect (200, 500, 400, 200);
    fill (0);
    textSize (13);
    text ( "Él es Christofer, un ladrón que fue buscado por mucho tiempo en toda Europa. \n Esta condenado a 20 años de cárcel por varios robos que organizo en bancos y museos.\n Ahora la policía necesita de su ayuda y tienen algo para ofrecerle que le podría interesar.", 400, 550); 
    image (flechaderecha, 700, 550, 50, 50);
    fill (250, 3, 3);
    rect ( 650, 500, 80, 20);
    textSize (12);
    fill (0);
    text ("Barra espaciadora", 690, 510);
  } else if (estado.equals ("trato_con_la_policia") ) {

    background (#B7B1B1);
    image (policia, 600, 400, 300, 300); 
    image (preso, 400, 400, 350, 350);
    image (nube, 600, 200, 200, 200);
    image (embajador, 600, 190, 80, 80);
    textSize (15);
    fill (0);
    text ("La policía le propone a Christofer un trato, si los ayuda a rescatar \n al embajador de China  que está secuestrado en una fábrica de vinos \n le consideran su libertad.", 200, 150);

    fill (250, 3, 3);
    rect (25, 500, 250, 150);
    textSize (14);
    fill (0);
    text ("Si presionas la letra M Christofer ayuda a la policia. \n Si presionas la letra N Christofer planea su fuga.", 150, 550);
  } else if (estado.equals ("acepta_el_trato") ) {

    background (#B7B1B1);
    image (policia, 600, 400, 300, 300); 
    image (preso, 400, 400, 350, 350);
    image (nube2, 510, 250, 200, 200);
    image (barriles, 510, 225, 60, 60);
    textSize (18);
    text ("Christofer acepta el trato y planea meterse dentro \n de un barril para poder entrar en la fábrica sin levantar sospechas.", 235, 150);
    image (flecha, 50, 460, 50, 50);
    fill (250, 3, 3);
    rect ( 50, 500, 80, 20);
    textSize (12);
    fill (0);
    text ("Barra espaciadora", 90, 510);
  } else if (estado.equals ("engaño"))
  {
    background (#B7B1B1);
    image (policia, 600, 400, 300, 300); 
    image (preso, 400, 400, 350, 350);
    image (nube2, 510, 250, 200, 200);
    image (barriles, 510, 225, 60, 60);
    textSize (18);
    text ("Christofer acepta el trato pero no cree en la palabra de la policía. \n Por eso ingenia un plan de fuga. Al momento de salir de la fábrica él \n se meterá en un barril desechable que subiran al camión de basura \n podra esquivar a la policía y así conseguir su libertad.", 300, 120);
    image (flecha, 50, 460, 50, 50);
    fill (250, 3, 3);
    rect ( 50, 500, 80, 20);
    textSize (12);
    fill (0);
    text ("Barra espaciadora", 90, 510);
  } else if (estado.equals ("fabrica") ) {

    background (255);
    image (ciudad, 400, 300, 800, 600); 
    image (camion, 400, 400, 200, 200);
    textSize (40);
    fill (0);
    text ("Viajando a la fabrica...", 450, 150);

    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "encuentra_al_embajador";
    }
  } else if (estado.equals ("encuentra_al_embajador") ) {

    image (fabrica, 400, 300, 800, 600);
    image (embajador, 100, 500, 200, 200);
    image (preso, 450, 500, 300, 300);
    image (barriln, 220, 550, 150, 150);
    image (barriln, 550, 550, 150, 150);
    fill (250, 3, 3);
    rect (250, 30, 300, 80);
    fill (0);
    textSize (20);
    text ("Presiona la letra N para que puedan \n entrar en los barriles y escapar ", 400, 65);
  } else if (estado.equals ("enojo")) {

    image (ciudad, 400, 300, 800, 600); 
    image (patrulla, 850, 500, 500, 600);
    image (embajador, 250, 450, 250, 250);
    image (policial, 500, 400, 300, 300); 
    fill (250, 3, 3);
    rect (200, 30, 400, 80);
    fill (0);
    textSize (20);
    text ("Christofer se da cuenta de que ha sido engañado y \n tendra que volver a la carcel a cumplir con su condena ", 400, 65);
    image (flechaderecha, 700, 550, 50, 50);
    fill (250, 3, 3);
    rect ( 650, 500, 80, 20);
    textSize (12);
    fill (0);
    text ("Press M", 690, 510);
  } else if (estado.equals ("prision2")) {

    background (50);
    image (rejas, 400, 300, 800, 600);
    fill (250, 3, 3);
    rect (200, 500, 400, 200);
    fill (0);
    textSize (13);
    text ( "Christofer fue usado por la policia y tendra que \n cumplir su condena hasta tener un plan para escapar. \n Presiona la barra espaciadora para reiniciar", 400, 550);
  } else if (estado.equals ("fabrica2") ) {

    background (255);
    image (ciudad, 400, 300, 800, 600); 
    image (camion, 400, 400, 200, 200);
    textSize (40);
    fill (0);
    text ("Viajando a la fabrica...", 450, 150);

    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "encuentra";
    }
  } else if (estado.equals ("encuentra") ) {

    image (fabrica, 400, 300, 800, 600);
    image (embajador, mouseX, mouseY, 150, 150);
    image (preso, 450, 500, 300, 300);
    image (barriln, 220, 550, 150, 150);
    image (barrilv, 550, 550, 150, 150);
    fill (250, 3, 3);
    rect (250, 50, 300, 50);
    fill (0);
    textSize (20);
    text ("Mete al embajador dentro del barril", 400, 65);
  } else if (estado.equals ("escapar" )) {

    image (fabrica, 400, 300, 800, 600); 
    image (preso, 450, 500, 300, 300);
    image (barriln, 220, 550, 150, 150);
    image (barrilv, 550, 550, 150, 150);
    fill (250, 3, 3);
    rect (250, 30, 300, 80);
    fill (0);
    textSize (20);
    text ("Presiona la letra M para \n escapar en el barril viejo", 400, 65);
  } else if (estado.equals ("salvar") ) {

    image (ciudad, 400, 300, 800, 600); 
    image (patrulla, 850, 500, 500, 600);
    image (embajador, 250, 450, 250, 250);
    image (policia, 500, 400, 300, 300); 
    image (signo, 550, 200, 80, 80); 
    fill (250, 3, 3);
    rect (150, 50, 500, 50);
    fill (0);
    textSize (15);
    text ("Presiona la barra espaciadora para seguir la fuga de Christofer", 400, 65);
  } else if (estado.equals ("boletos") ) {

    background (255);
    image (boletoa, 400, 200, 300, 300); 
    image (boletob, 400, 450, 300, 300); 
    textSize (20 );
    fill (0); 
    text ("Presiona la letra A o B para \n elegir el destino de Christofer.", 135, 400);
    text ("A", 600, 200); 
    text ("B", 600, 450);
  } else if (estado.equals ("viaje") ) {

    image (barco, 400, 300, 800, 600); 
    if ( millis() > RESET+CANTIDAD_DE_MS ) {

      estado = "mexico";
    }
  } else if (estado.equals ("mexico")) {


    image (mexico, 400, 300, 800, 600); 
    image (preso, 350, 515, 250, 250);
    image (flechaderecha, 700, 550, 50, 50);
    fill (250, 3, 3);
    rect ( 650, 500, 80, 20);
    textSize (12);
    fill (0);
    text ("Barra espaciadora", 690, 510);
  } else if (estado.equals ("viajee")) {

    image (barco, 400, 300, 800, 600); 
    if ( millis() > RESET+CANTIDAD_DE_MS ) {
      estado = "china";
    }
  } else if (estado.equals ("china") ) {

    image (china, 400, 300, 800, 600);
    image (preso, 300, 515, 250, 250);
    image (flechaderecha, 700, 550, 50, 50);
    fill (250, 3, 3);
    rect ( 650, 500, 80, 20);
    textSize (12);
    fill (0);
    text ("Barra espaciadora", 690, 510);
  } else if (estado.equals ("creditos") ) {

    background (0); 
    fill (255); 
    textSize (30);
    text ("CREDITOS", 400, 150); 
    textSize (25); 
    text ("Escapar del engaño \n Josefina Zappettini \n Tecno1 \n Comision 2 \n Facultad de Artes \n Julio 2020", 400, 300);
    fill (250, 3, 3);
    rect ( 260, 490, 300, 20);
    textSize (12); 
    fill (0);
    text ("Presione BACKSPACE para comenzar de nuevo", 400, 500);
  }

//ACTUALIZO VALORES 
  posXP = posXP - 5;
  posXC = posXC - 5;
}

void keyPressed () {

  if (key == ' ' && estado.equals ("titulo")) {
    estado = "patrulla";
  }

  if (key == ' ' && estado.equals ("rejas")) {

    estado = "trato_con_la_policia";
  }

  if (key == 'm' && estado.equals ("trato_con_la_policia")) {

    estado = "acepta_el_trato";
  }

  if (key == 'n' && estado.equals ("trato_con_la_policia")) {

    estado = "engaño";
  }

  if (key == ' ' && estado.equals ("engaño")) {

    estado= "fabrica2"; 
    RESET = millis();
  }

  if (key == ' ' && estado.equals ("acepta_el_trato")) {

    estado= "fabrica"; 
    RESET = millis();
  }

  if (key == 'm' && estado.equals ("escapar")) {

    estado = "salvar";
  }

  if (key == ' ' && estado.equals ("salvar")) {
    estado = "boletos";
  }
  if (key == 'a' && estado.equals ("boletos")) {
    estado = "viaje"; 
    RESET = millis();
  }

  if (key == 'b' && estado.equals ("boletos")) {

    estado = "viajee"; 
    RESET = millis();
  }

  if (key == 'n' && estado.equals ("encuentra_al_embajador")) {

    estado = "enojo";
  }
  if (key == 'm' && estado.equals ("enojo")) {

    estado = "prision2" ;
  }

  if (estado.equals ("china") || estado.equals ("mexico") || estado.equals ("prision2")) {
    if (key == ' ') {
      estado = "creditos";
    }
  }

  if (keyCode == BACKSPACE ) {
    estado = "titulo"; 
    posXP = 0;
  }
}

void mousePressed () {

  if (mouseX > 50  && mouseX < 50+50 && mouseY > 400 && mouseY < 400+50 && estado.equals ("patrulla") ) {

    estado = "rejas";
  }
  image (barriln, 220, 550, 150, 150);
  if (mouseX > 220 && mouseX < 220+150 && mouseY > 550 && mouseY < 550+150 && estado.equals ("encuentra")) {

    estado= "escapar";
  }
}
