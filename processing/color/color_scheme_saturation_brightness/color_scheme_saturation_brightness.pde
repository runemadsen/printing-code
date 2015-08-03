import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);
  
  // pick 3 random colors of red
  TColor color1 = TColor.newHSV(0, random(1), random(1));
  TColor color2 = TColor.newHSV(0, random(1), random(1));
  TColor color3 = TColor.newHSV(0, random(1), random(1));
  
  // then we draw them on the screen
  int rectSize = 400;
  noStroke();
  translate(40, 200);

  // draw color 1
  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(0, 0, rectSize, rectSize); 

  // draw color 2
  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(rectSize, 0, rectSize, rectSize); 

  // draw color 3
  fill(color3.hue(), color3.saturation(), color3.brightness());
  rect(rectSize*2, 0, rectSize, rectSize); 
}
