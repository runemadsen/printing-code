import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  background(255);
  strokeWeight(2);

  RG.init(this);

  translate(450, 300);

  
  // first we make our shape
  RShape house = new RShape();

  // then we draw the main house. This is automatically added to an
  // empty RPath in the shape
  house.addLineTo(300, 0);
  house.addLineTo(300, 200);
  house.addLineTo(0, 200);
  house.addLineTo(0, 0);

  // when we call "addMoveTo" geomerative creates a new RPath in our RShape
  // so we do that to draw a door that is not connected to the rest of the house
  house.addMoveTo(70, 200);
  house.addLineTo(70, 70);
  house.addLineTo(140, 70);
  house.addLineTo(140, 200);

  // let's move again to create our roof
  house.addMoveTo(0, 0);
  house.addLineTo(150, -100);
  house.addLineTo(300, 0);

  // draw the house
  house.draw();
}