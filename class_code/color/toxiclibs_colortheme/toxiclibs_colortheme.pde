import toxi.color.*;
import toxi.geom.*;
import toxi.util.datatypes.*;

int rectSize = 200;
int spacing = 20;

void setup() 
{
  size(1280, 800);
  background(255);
  colorMode(HSB, 1, 1, 1);
  noStroke();
  smooth();
  
  // first create our color theme
  ColorTheme t = new ColorTheme("runes theme");
  
  // now add some pre-defined colorrange objects 
  t.addRange("saddlebrown", 0.15);
  t.addRange("dark teal", 0.05);
  t.addRange("fresh yellow", 0.05);
  
  // we can also add some color ranges with our own parameters
  FloatRange h = new FloatRange(0.1, 0.8);
  FloatRange s = new FloatRange(0.3, 0.8);
  FloatRange b = new FloatRange(0.3, 1);
  ColorRange range = new ColorRange(h, s, b, "runes range");
  t.addRange(range, null, 0.05);

  // now get 5 random colors from the theme
  ColorList randomList = t.getColors(5);

  // draw them
  translate(100, 200);
  int xPos = 0;
  
  for (Iterator i = randomList.iterator(); i.hasNext();) {
    TColor c = (TColor) i.next();
    fill(c.hue(), c.saturation(), c.brightness());
    rect(xPos, 0, rectSize, rectSize);
    xPos += rectSize + spacing;
  }
}
