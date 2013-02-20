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
  
  // now let's create a color range and put in the color theme
  FloatRange h = new FloatRange(0, 0.1);
  FloatRange s = new FloatRange(0.5, 1);
  FloatRange b = new FloatRange(0.5, 1);
  ColorRange range = new ColorRange(h, s, b, "runes range");
  t.addRange(range, null, 0.05);

  h = new FloatRange(0.7, 0.9);
  s = new FloatRange(0.8, 1);
  b = new FloatRange(0.3, 0.5);
  ColorRange range2 = new ColorRange(h, s, b, "runes range 2");
  t.addRange(range2, null, 0.05);

  // If you quickly want to create a range, you can pass in the name of a ColorRange AND the name of a NamedColor as a string:
  //t.addRange("dark teal", 0.05);
  //t.addRange("fresh yellow", 0.05);

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
