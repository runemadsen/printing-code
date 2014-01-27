void setup() 
{
  size(1280, 800, P3D);
  stroke(255);
  background(0);

  translate(width/2, height/2, 0);
  rotateX(radians(60));
  rotateY(radians(60));
  scale(100);
  beginShape();
  vertex(-1, -1, -1);
  vertex( 1, -1, -1);
  vertex( 0,  0,  1);

  vertex( 1, -1, -1);
  vertex( 1,  1, -1);
  vertex( 0,  0,  1);

  vertex( 1, 1, -1);
  vertex(-1, 1, -1);
  vertex( 0, 0,  1);

  vertex(-1,  1, -1);
  vertex(-1, -1, -1);
  vertex( 0,  0,  1);
  endShape();
}
