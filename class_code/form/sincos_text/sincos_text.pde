int circleRadius = 200;

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  translate(width / 2, height / 2);
  fill(30);
  
  float numWords = 30;
  float wordDegree = 360 / numWords; 
  
  for(int i = 0; i < numWords; i++)
  {
    pushMatrix();
    float x = cos(radians(i * wordDegree)) * circleRadius;
    float y = sin(radians(i * wordDegree)) * circleRadius;
    translate(x, y);
    rotate(radians(i * wordDegree));
    text("Hello World!", 0, 0);
    popMatrix();
  }
}
