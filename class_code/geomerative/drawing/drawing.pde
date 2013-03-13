import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  colorMode(HSB, 1, 1, 1);
  background(1);
  noStroke();

  RG.init(this);

  // let's make our shape
  translate(250, 200);
  fill(0, 1, 1);
  RShape wave = new RShape();
  wave.addMoveTo(0, 100);
  wave.addBezierTo(0, 100, 50, 0, 100, 100);
  wave.addBezierTo(100, 100, 150, 200, 200, 100);
  wave.addBezierTo(200, 100, 250, 0, 300, 100);
  wave.addLineTo(300, 300);
  wave.addLineTo(0, 300);
  
  // draw it at 0, 0
  wave.draw();

  translate(500, 0);

  // or do really fun stuff!
  for(int i = 0; i < 5; i++)
  {
    fill(random(1), random(1), random(1));
    wave.rotate(random(360), 150, 150); // rotate from middle of the shape
    wave.scale(random(0.5, 1.5));
    wave.draw();
    // noticed how we don't need pushMatrix and popMatrix?
    // rotate and scale is only performed on the RShape
  }
}