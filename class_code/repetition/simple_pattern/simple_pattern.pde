void setup()
{
  size(1280, 800);
  smooth();
  background(230, 230, 230);
  noStroke();

  int symbolSize = 80;
  float spacing = symbolSize * 0.8;

  for(int x = 0; x < width; x += spacing)
  {
    for(int y = 0; y < height; y += spacing)
    {
      fill(200, 130, 115);
      ellipse(x, y, symbolSize, symbolSize);

      fill(180, 180, 180);
      ellipse(x, y, symbolSize * 0.8, symbolSize * 0.8);

      fill(50, 50, 50);
      ellipse(x, y, symbolSize * 0.3, symbolSize * 0.3);
    }
  }
}