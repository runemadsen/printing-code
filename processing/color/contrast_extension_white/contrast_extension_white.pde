import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);
 
  TColor color1 = TColor.newHSV(50f/360f, 1, 1);
  TColor color2 = TColor.newHSV(300f/360f, 0.6, 0.3);
  
  // then we draw them on the screen
  int rectSize = 250;
  translate(240, 280);
  noStroke();

  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(0, 0, rectSize, rectSize);

  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(rectSize * 2, 0, rectSize, rectSize);
}
