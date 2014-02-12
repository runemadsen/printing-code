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
  TColor color1 = TColor.newHSV(random(1), random(1), 1);

  // then pick opposite color
  TColor color2 = new TColor(color1);
  color2.adjustHSV(0.5, 0, 0);
  
  // then we draw them on the screen
  noStroke();
  translate(240, 200);

  fill(color1.hue(), color1.saturation(), color1.brightness());
  rect(0, 0, rectSize, rectSize); 

  fill(color2.hue(), color2.saturation(), color2.brightness());
  rect(rectSize, 0, rectSize, rectSize); 
}