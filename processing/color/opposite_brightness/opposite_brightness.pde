import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);
  noStroke();
  
  // find random color
  TColor color1 = TColor.newRandom();
  background(color1.hue(), color1.saturation(), color1.brightness());
  
  // crazy calculation to get perceived brightness
  float r = color1.red() * 255;
  float g = color1.green() * 255;
  float b = color1.blue() * 255;
  float rectBrightness = sqrt(r * r * .241 + g * g * .691 + b * b * .068);
  
  // if perceived brightness is lower than 130 the rectangle should be white
  // otherwise it should be black.
  if(rectBrightness < 130)
  {
    fill(0, 0, 1); 
  }
  else
  {
    fill(0, 0, 0);
  }
 
  int rectSize = 200;
  rect((width / 2) - (rectSize/2), (height / 2) - (rectSize/2), rectSize, rectSize);
}
