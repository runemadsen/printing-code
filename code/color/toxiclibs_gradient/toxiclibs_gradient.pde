import toxi.math.*;
import toxi.color.*;

void setup() 
{
  size(1280, 800);
  background(255);
  noFill();
  colorMode(HSB, 1, 1, 1);
  
  ColorGradient gradient = new ColorGradient();
  
  // if the gradient looks weird, try another interpolation method
  //grad.setInterpolator(new CosineInterpolation());
  
  int gradientWidth = 1000;
  int gradientHeight = 300;
  
  // define the colors and where they are in the gradient
  gradient.addColorAt(0, TColor.BLUE);
  gradient.addColorAt(gradientWidth/2, TColor.RED);
  gradient.addColorAt(gradientWidth, TColor.YELLOW);
  
  // get a color list rorm the gradient. Each color is a pixel
  // note that you can go above the width of the gradient
  translate((width / 2) - (gradientWidth / 2), (height / 2) - (gradientHeight / 2));
  
  ColorList l= gradient.calcGradient(0, gradientWidth);
  int xPos = 0;
  for(Iterator i=l.iterator(); i.hasNext();) 
  {
    TColor c = (TColor)i.next();
    stroke(c.hue(), c.saturation(), c.brightness());
    line(xPos, 0, xPos, gradientHeight);
    xPos++;
  }
}

