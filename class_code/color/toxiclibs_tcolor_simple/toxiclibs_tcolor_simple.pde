import toxi.color.*;
import toxi.util.datatypes.*;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();

  // first set the colormode of the document
  colorMode(HSB, 1, 1, 1);
  
  // create a red color with values go from 0-1
  TColor redColor = TColor.newHSV(0, 1, 1);

  // if you have an RGB color, you can also create from normalized RGB values
  //TColor redColor = TColor.newRGB(1, 0, 0);  

  // you can also use names instead. See list here: http://toxiclibs.org/docs/colorutils/toxi/color/NamedColor.html
  //TColor redColor = NamedColor.RED.copy();
  
  // draw color
  translate(width/2, height/2);
  rectMode(CENTER);
  fill(redColor.hue(), redColor.saturation(), redColor.brightness());
  rect(0, 0, 150, 150);
}
