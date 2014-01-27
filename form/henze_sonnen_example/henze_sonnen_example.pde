void setup()
{  
  size(600, 600);
  smooth();
  noFill();
  background(255);
  
  noiseDetail(3, 1.1);
  noiseSeed(1);
  
  // draw 3 circle
  for(int i = 0; i < 3; i++)
  {
    int x = round(random(width));
    int y = round(random(height));
    int startRadius = round(random(300, 1500));
    int stopRadius = round(random(startRadius * 0.1, startRadius * 0.8));
    
    float nPos = 0;
    
    for(int j = startRadius; j > stopRadius; j--)
    {
      int ranAlpha = round(noise(nPos) * 255);
      stroke(0, ranAlpha);
      ellipse(x, y, j, j); 
      
      nPos += 0.008;
    }  
  }
}
