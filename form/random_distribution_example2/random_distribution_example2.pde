void setup()
{  
  size(600, 500);
  smooth();
  fill(0);
  background(255);
  rectMode(CENTER);
  translate(100, 100);
  
  // draw 3x3 rectangles
  for(int x = 0; x < 5; x++)
  {
    for(int y = 0; y < 4; y++)
    {
      float ranX = x * 170;
      float ranY = y * 120;
      
      ranX = random(ranX * 0.8, ranX * 1.2);
      ranY = random(ranY * 0.8, ranY * 1.2);
      
      float ranRot = random(360);
    
      pushMatrix();
      translate(ranX, ranY);
      rotate(radians(ranRot));
      rect(0, 0, 50, 50);
      popMatrix();
    } 
  }
}
