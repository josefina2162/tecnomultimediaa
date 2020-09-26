class Ojo{
  
  float x, y;
  float tam;
  
  
  Ojo (float x1, float y1, float tam1) {
    
    x = x1;
    y = y1;
    tam = tam1;
  }
  
  
  
  


void dibujo () {
  
  pushStyle();  
  
  noStroke();
  fill( 255 );
  circle( x, y, 100 );
  fill( 255, 0, 0 );
  circle( x, y, 50 );  
  fill( 0 );
  circle( x, y, 20 );  
  
  popStyle();  
   
}


void moverIzq () {
  if (keyCode == LEFT)
  
  x -= tam;
  
}

void moverDer () {
  
  if (keyCode == RIGHT);
  
  x += tam;
}
}
