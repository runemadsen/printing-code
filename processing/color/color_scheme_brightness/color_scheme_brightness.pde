import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);

  int rectSize = 400;
  
  // first pick red base color
  TColor color1 = TColor.newHSV(0, 1, 1);

  float diff = 30;
  
  // then we pick two colors with different brightness
  TColor color2 = TColor.newHSV(0, color1.saturation() - (diff/100f), color1.brightness() - (diff/100f));
  TColor color3 = TColor.newHSV(0, color2.saturation() - (diff/100f), color2.brightness() - (diff/100f));

  // draw color 1
  noStroke();
  translate(40, 200);
  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(0, 0, rectSize, rectSize); 

  // draw color 2
  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(rectSize, 0, rectSize, rectSize);

  // draw color 3
  fill(color3.hue(), color3.saturation(), color3.brightness());
  rect(rectSize*2, 0, rectSize, rectSize);
}
