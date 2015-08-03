void setup()
{  
  size(600, 500);
  smooth();
  noStroke();
  fill(0);
  background(255);
  
  translate(75, 85);
  
  // draw 5x4 ellipses
  for(int x = 0; x < 5; x++)
  {
    for(int y = 0; y < 4; y++)
    {
      if(x == 3 && y == 2)
      {
        fill(23, 141, 50);
      }
      else
      {
        fill(0);
      }
      
      ellipse(x * 110, y * 110, 70, 70);
    } 
  }
}
