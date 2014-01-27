int sideLength = 60;

void setup()
{
  size(400, 250);
  background(255);
  noStroke();
  fill(0);
  
  float a = sideLength/2;
  float b = sin(radians(60))*sideLength;
 
  translate((width / 2) - sideLength, (height / 2) - sideLength);
 
  beginShape();
  vertex(0, b);
  vertex(a, 0);
  vertex(a+sideLength, 0);
  vertex(2*sideLength, b);
  vertex(a+sideLength, 2*b);
  vertex(a+sideLength, 2*b);
  vertex(a, 2*b);
  vertex(0, b);
  endShape();
}
