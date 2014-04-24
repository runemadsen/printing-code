void setup() 
{
  size(1280, 800, P3D);
  stroke(255);
  noFill();
  background(0);

  translate(width/2, height/2, 0);
  rotateX(radians(60));
  rotateY(radians(60));
  beginShape();
  vertex(-100, -100, -100);
  vertex( 100, -100, -100);
  vertex( 0,  0,  100);

  vertex( 100, -100, -100);
  vertex( 100,  100, -100);
  vertex( 0,  0,  100);

  vertex( 100, 100, -100);
  vertex(-100, 100, -100);
  vertex( 0, 0,  100);

  vertex(-100,  100, -100);
  vertex(-100, -100, -100);
  vertex( 0,  0,  100);
  endShape();
}
