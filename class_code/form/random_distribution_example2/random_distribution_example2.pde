void setup()
{  
  size(600, 500);
  smooth();
  noFill();
  fill(0);
  background(255);
  
  noiseDetail(3, 1.1);
  noiseSeed(1);
  
  translate(100, 100);
  int x = 0;
  int y = 0;
  
  // draw 3x3 rectangles
  for(int i = 0; i < 9; i++)
  {  
    float ranX = random(x * 0.8, x * 1.2);
    float ranY = random(y * 0.8, y * 1.2);
    float ranRot = random(360);
    
    pushMatrix();
    translate(ranX, ranY);
    rotate(radians(ranRot));
    rect(-25, -25, 50, 50);
    popMatrix();
    
    x += 170;
    
    if(i % 3 == 2)
    {
      y += 120;
      x = 0;
    }
  }
}
