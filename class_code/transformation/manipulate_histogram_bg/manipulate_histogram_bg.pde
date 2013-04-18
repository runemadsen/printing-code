import toxi.geom.*;
import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;
import toxi.math.*;

void setup()
{
  size(1280, 800);
  smooth();
  background(255);
  colorMode(HSB, 1, 1, 1);
  noStroke();

  // load image
  PImage bruce = loadImage("bruce.jpg");
  bruce.loadPixels();

  // make a histogram from the image using 20% of the pixels, with a tolerance of 0.2
  Histogram bruceHistogram = Histogram.newFromARGBArray(bruce.pixels, bruce.pixels.length/20, 0.2, true);

  // now get a colorlist from the histogram
  ColorList bruceColors = bruceHistogram.getPalette();

  for(int x = 0; x < width; x += 20)
  {
    for(int y = 0; y < height; y += 20)
    {
      TColor ranColor = bruceColors.getRandom();
      fill(ranColor.toARGB());
      rect(x, y, 20, 20);
    }
  }

  translate((width/2) - (bruce.width/2), (height/2) - (bruce.height/2));
  image(bruce, 0, 0);
}