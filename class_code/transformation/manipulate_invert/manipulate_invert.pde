import toxi.geom.*;
import toxi.color.*;

void setup()
{
  size(1280, 800);
  smooth();
  background(255);
  noStroke();

  // load image
  PImage bruce = loadImage("bruce.jpg");
  bruce.loadPixels();

  translate((width/2) - (bruce.width/2), (height/2) - (bruce.height/2));

  // loop through image and draw each pixel
  for(int x = 0; x < bruce.width; x++)
  {
    for(int y = 0; y < bruce.height; y++)
    {
      int index = x + y * bruce.width;

      // first get the color values.
      float r = (bruce.pixels[index] >> 16) & 0xFF;
      float g = (bruce.pixels[index] >> 8) & 0xFF;
      float b = bruce.pixels[index] & 0xFF;

      // invert them
      r = 255 - r;
      g = 255 - g;
      b = 255 - b;

      bruce.pixels[index] = color(r, g, b);
    }
  }

  bruce.updatePixels();
  image(bruce, 0, 0);
}