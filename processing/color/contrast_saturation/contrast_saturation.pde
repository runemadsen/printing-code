import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);
  
  TColor color1 = TColor.newHSV(41f/360f, 1, 1);
  TColor color2 = TColor.newHSV(41f/360f, 0.5, 0.9);
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(240, 200);
  noStroke();

  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(0, 0, rectSize, rectSize);

  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(rectSize, 0, rectSize, rectSize);
}
