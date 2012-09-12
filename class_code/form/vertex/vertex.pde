int sideLength = 100;

void setup()
{
  size(1280, 800);
  background(255);
  noStroke();
  fill(0);
  
  translate((width / 2), (height / 2));
 
  beginShape();
  vertex(-sideLength, -sideLength);
  vertex(0, -sideLength*2);
  vertex(sideLength, -sideLength);
  vertex(sideLength, sideLength);
  vertex(-sideLength, sideLength);
  endShape();
  
  saveFrame("grab.png");
}
