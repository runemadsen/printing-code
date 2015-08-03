import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  fill(83, 142, 35);
  noStroke();

  RG.init(this);

  // remember this from the form class?
  translate(250, 70);
  beginShape();
  vertex(0, 100);
  bezierVertex(0, 100, 50, 0, 100, 100);
  bezierVertex(100, 100, 150, 200, 200, 100);
  bezierVertex(200, 100, 250, 0, 300, 100);
  vertex(300, 300);
  vertex(0, 300);
  endShape();

  // this is how you draw the exact same shape as an RShape
  translate(500, 0);
  RShape wave = new RShape();
  wave.addMoveTo(0, 100);
  wave.addBezierTo(0, 100, 50, 0, 100, 100);
  wave.addBezierTo(100, 100, 150, 200, 200, 100);
  wave.addBezierTo(200, 100, 250, 0, 300, 100);
  wave.addLineTo(300, 300);
  wave.addLineTo(0, 300);
  wave.draw();
}