import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);
  
  // first pick base color
  TColor color1 = TColor.newHSV(0, 1, 1);
  
  // find the rectangle of complementary colors by going 90 degrees around the color wheel  
  TColor color2 = TColor.newHSV(color1.hue() + (25f/360f), 1, 1);
  TColor color3 = TColor.newHSV(color1.hue() + (180f/360f), 1, 1);
  TColor color4 = TColor.newHSV(color1.hue() + (205f/360f), 1, 1);

  // then we draw them on the screen
  int rectSize = 300;
  noStroke();
  translate(40, 230);

  // draw color 1
  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(0, 0, rectSize, rectSize); 

  // draw color 2
  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(rectSize, 0, rectSize, rectSize); 

  // draw color 3
  fill(color3.hue(), color3.saturation(), color3.brightness());
  rect(rectSize*2, 0, rectSize, rectSize); 

  // draw color 4
  fill(color4.hue(), color4.saturation(), color4.brightness());
  rect(rectSize*3, 0, rectSize, rectSize);
}