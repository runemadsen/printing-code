import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

int rectSize = 150;
int spacing = 30;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1);
  
  // create a color range object ranges of hue, saturation and brightness
  FloatRange h = new FloatRange(0.1, 0.8);
  FloatRange s = new FloatRange(0.3, 0.8);
  FloatRange b = new FloatRange(0.3, 1);
  ColorRange range = new ColorRange(h, s, b, "My range");
  
  // you can also use some of the already supported ranges
  //ColorRange range = ColorRange.INTENSE;
  
  // find 18 random colors in the range
  translate(100, 100);
  
  for(int i = 0; i < 6; i++)
  {
    for(int j = 0; j < 3; j++)
    { 
      TColor ranColor = range.getColor();
      fill(ranColor.hue(), ranColor.saturation(), ranColor.brightness());
      rect(i * (rectSize + spacing), j * (rectSize + spacing), rectSize, rectSize);
    }  
  }
  
  saveFrame("grab.png");
}
