import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

int rectSize = 200;
int spacing = 50;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1);
  
  // create a red color with values go from 0-1
  TColor redColor = TColor.newHSV(0, 1, 1);
  // you can also use names instead
  //TColor redColor = TColor.newHSV(Hue.RED.getHue(), 1, 1);
  
  // draw color
  translate(100, 100);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // darken by 50% and desaturate by 10%
  translate(rectSize + spacing, 0);
  redColor.darken(0.5);
  redColor.desaturate(0.1);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // lighten and saturate
  translate(rectSize + spacing, 0);
  redColor.lighten(0.2);
  redColor.saturate(1);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // get the complementary color
  translate(0, rectSize + spacing);
  TColor complementary = redColor.getComplement();
  fill(complementary.hue(), complementary.saturation(), complementary.brightness());
  rect(0, 0, rectSize, rectSize);
  
  // mix 40% of the complementary into the red color
  translate(rectSize + spacing, -((rectSize/2) + (spacing/2)));
  TColor blended = redColor.blend(complementary, 0.4);
  fill(blended.hue(), blended.saturation(), blended.brightness());
  rect(0, 0, rectSize, rectSize);
}
