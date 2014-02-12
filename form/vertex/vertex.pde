int sideLength = 200;

void setup()
{
  size(1280, 800);
  background(255);
  noStroke();
  fill(0);
  
  translate((width / 2), (height / 2));
 
  beginShape();
  curveVertex(-sideLength, -sideLength);
  curveVertex(0, -sideLength*2);
  curveVertex(sideLength, -sideLength);
  curveVertex(sideLength, sideLength);
  curveVertex(-sideLength, sideLength);
  endShape();
}
