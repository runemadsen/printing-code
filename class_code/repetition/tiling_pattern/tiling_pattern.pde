int symbolSize = 50;

void setup()
{
  size(1280, 800);
  background(255);
  noStroke();

  translate(symbolSize, symbolSize);
  
  for(int x = 0; x < width; x += symbolSize)
  {
    for(int y = 0; y < height; y += symbolSize)
    {
      drawTile(x, y);
    }
  }
}

void drawTile(int x, int y)
{
  pushMatrix();
  translate(x, y);
  for(int i = 0; i < 4; i++)
  {
    fill(random(255),random(200,255));
    triangle(0, 0, 0, symbolSize, symbolSize, symbolSize);
    fill(random(255),random(200,255));
    triangle(0, 0, symbolSize, 0, symbolSize, symbolSize);
    rotate(radians(90));
  }
  popMatrix();
}