void setup()
{
  size(1000, 800);
  background(255);
  smooth();
  noStroke();

  int rectSize = 60;

  // first draw 10 rectangles side by side
  translate(160, 80);
  fill(0);
  for(int i = 0; i < 10; i++)
  {
    rect(i * (rectSize + 5), 0, rectSize, rectSize);
  }

  // then draw 10 rectangles in a circle
  translate(300, 360);
  int radius = 200;
  for(int i = 0; i < 10; i++)
  {
    float x = cos(radians((360f / 10) * i)) * radius;
    float y = sin(radians((360f / 10) * i)) * radius;
    rect(x, y, rectSize, rectSize);
  }
}