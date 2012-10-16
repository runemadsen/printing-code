import geomerative.*;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  
  int fontSize = 200;
  
  // initialize the geomerative library
  RG.init(this);
  
  // create a new font
  RFont font = new RFont("FreeSans.ttf", fontSize, RFont.LEFT);

  translate(0, 300);
  font.draw("Hello World!"); // if you're drawing in a canvas object, do font.draw("Hello World", canvas);
}
