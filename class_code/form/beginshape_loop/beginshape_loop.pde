void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  fill(30);
  noStroke();
  
  beginShape();
  
  int xPos = 0;
  int yPos = 0;
  
  for(int i = 0; i < 40; i++)
  {
    vertex(random(400), random(400));
  }
  
  endShape();

}
