import toxi.color.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  colorMode(HSB, 1, 1, 1);
  ellipseMode(CORNER);
  noStroke();
  
  ModularGrid grid = new ModularGrid(3, 4, 10, 50);
  TColor[] colors = {TColor.newHSV(0.29722, 0.49, 0.71), TColor.newHSV(0.0166, 0.69, 0.91), TColor.newHSV(0.5527, 0.91, 0.82)};
  int ellipseSize = 40;
  
  for(int i = 0; i < grid.modules.length; i++)
  {
    TColor col = colors[i];

    for(int j = 0; j < grid.modules[i].length; j++)
    {
      for(int k = 0; k < 10; k++)
      {
        Module mod = grid.modules[i][j];
        fill(col.hue(), col.saturation(), col.brightness());
        float x = random(mod.x, mod.x + mod.w - ellipseSize);
        float y = random(mod.y, mod.y + mod.h - ellipseSize);
        ellipse(x, y, ellipseSize, ellipseSize);
      }

      col.darken(0.2);
    }
  }
  
  grid.display();
}
