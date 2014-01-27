void setup()
{  
  size(600, 500);
  smooth();
  noFill();
  fill(0);
  background(255);
  
  for(int i = 0; i < 30; i++)
  {  
    ellipse(random(width), random(height), 60, 60);
  }
}
