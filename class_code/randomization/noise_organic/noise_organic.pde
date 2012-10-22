void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  noFill();
  stroke(255);
  strokeWeight(3);

  translate(width/2, height/2);

  int radius = 300;
  float numPoints = 100;
  float pointDegree = 300 / numPoints;
  float noiseCount = 0;

  beginShape();

  for(int i = 0; i < numPoints; i++)
  {
  	float x = cos(radians(pointDegree * i)) * radius;
  	float y = sin(radians(pointDegree * i)) * radius;
  	float n = noise(noiseCount) * 20;

  	vertex(x + n, y + n);
  	noiseCount += 0.2;
  }

  endShape();

  saveFrame("grab.png");
}