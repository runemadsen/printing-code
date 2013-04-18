import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  background(255);
  noFill();
  strokeWeight(2);

  RG.init(this);

  // first we create a vector with a direction
  RPoint myDirection = new RPoint(1, 0.3);

  // if you don't like decimals, you can normalize the vector afterwards
  // RPoint myDirection = new RPoint(100, 30);
  // myDirection.normalize();

  // draw a very short line from this
  translate(200, 200);
  //line(0, 0, myDirection.x * 20, myDirection.y * 20);
  // this would be the same
  // myDirection.scale(20);
  // line(0, 0, myDirection.x, myDirection.y);

  // draw a longer line from this
  translate(0, 100);
  line(0, 0, myDirection.x * 800, myDirection.y * 800);
  // this would be the same
  // myDirection.scale(800);
  // line(0, 0, myDirection.x, myDirection.y);
}
