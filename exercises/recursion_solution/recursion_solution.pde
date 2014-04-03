void setup()
{
  size(1000, 800);
  background(255);
  smooth();
  noStroke();

  // first draw 10 rectangles side by side
  translate(160, 80);
  fill(0);
  drawRectHorizontal(0, 60);

  // then draw 10 rectangles in a circle
  translate(300, 360);
  drawRectCircle(0, 60, 200);
}

void drawRectHorizontal(int i, int rectSize)
{
  rect(i * (rectSize + 5), 0, rectSize, rectSize);

  if(i < 10)
  {
    drawRectHorizontal(i + 1, rectSize);
  }
}

void drawRectCircle(int i, int rectSize, int radius)
{
  float x = cos(radians((360f / 10) * i)) * radius;
  float y = sin(radians((360f / 10) * i)) * radius;
  rect(x, y, rectSize, rectSize);

  if(i < 10)
  {
    drawRectCircle(i + 1, rectSize, radius);
  }
}