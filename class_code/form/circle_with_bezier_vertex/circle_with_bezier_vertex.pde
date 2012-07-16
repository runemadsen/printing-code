int circleRadius = 50;
int numPoints = 8;

void setup()
{
  size(400, 250);
  background(255);
  noStroke();
  fill(0);
  
  translate(width / 2, height / 2);
  float angle = 360 / numPoints;
 
  beginShape();
  
  for(int i = 0; i < numPoints + 3; i++)
  {
     float x = cos(radians(i * angle)) * circleRadius;
     float y = sin(radians(i * angle)) * circleRadius;
     curveVertex(x, y);
  }
  
  endShape();
}
