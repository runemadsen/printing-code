void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  ellipseMode(CORNER);
  
  Grid grid = new Grid(3, 50);
  
  int ellipseSize = 40;
  int[] colors = {#70b65c, #ea5949, #1394d2};

  for(int i = 0; i < grid.columns.length; i++)
  {
    for(int j = 0; j < 40; j++)
    {
      Column col = grid.columns[i];
      fill(colors[i]);
      float x = random(col.x, col.x + col.w - ellipseSize);
      float y = random(col.y, col.y + col.h - ellipseSize);
      ellipse(x, y, ellipseSize, ellipseSize);
    }
  }

  grid.display();
}
