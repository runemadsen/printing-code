import java.awt.Color;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  noStroke();
  
  // find random color
  HSBColor color1 = new HSBColor();
  background(color1.h, color1.s, color1.b);
  
  RGBColor color1converted = color1.getRGB();
  
  float rectBrightness = color1converted.getPerceivedBrightness();
  
  // if perceived brightness is lower than 130 the rectangle should be white
  // otherwise it should be black.
  if(rectBrightness < 130)
  {
    fill(0, 0, 100); 
  }
  else
  {
    fill(0, 0, 0); 
  }
 
  int rectSize = 200;
  rect((width / 2) - (rectSize/2), (height / 2) - (rectSize/2), rectSize, rectSize);
}
