
Ojo o;


void setup () {
  
  size (600, 600);
  
  o = new Ojo (width/2, 200, 100);
}
 
 void draw (){
   
  background (150);
  
  o.dibujo ();
 }
 
 void keyPressed () {
   
   o.moverIzq ();
   o.moverDer ();
 }
