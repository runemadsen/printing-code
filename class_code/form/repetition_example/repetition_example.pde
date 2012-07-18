void setup()
{  
  size(600, 500);
  smooth();
  noStroke();
  fill(0);
  background(255);
  
  translate(75, 85);
  int x = 0;
  int y = 0;
  
  // draw 5x4 ellipses
  for(int i = 0; i < 20; i++)
  {  
    if(i == 13)   fill(23, 141, 50);
    else         fill(0);
    
    ellipse(x, y, 70, 70);
    
    x += 110;
   
    if(i % 5 == 4)
    {
      x = 0;
      y += 110;
    }
  }
}
