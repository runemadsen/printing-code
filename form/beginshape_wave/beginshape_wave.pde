void setup()
{
  size(400, 250);
  smooth();
  background(255);
  noStroke();
  fill(0);
  
  beginShape();
  translate(125, 35);
  vertex(0, 50);
  bezierVertex(0, 50, 25, 0, 50, 50);
  bezierVertex(50, 50, 75, 100, 100, 50);
  bezierVertex(100, 50, 125, 0, 150, 50);
  vertex(150, 150);
  vertex(0, 150);
  endShape();
  
}
