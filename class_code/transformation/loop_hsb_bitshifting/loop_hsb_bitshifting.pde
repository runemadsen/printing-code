import toxi.geom.*;
import toxi.color.*;

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

  translate((width/2) - (bruce.width/2), (height/2) - (bruce.height/2));

  // loop through image and draw each pixel
  for(int x = 0; x < bruce.width; x++)
  {
    for(int y = 0; y < bruce.height; y++)
    {
      int index = x + y * bruce.width;

      // first get the color values. Even though we're in HSB color mode, the image is saves as RGB
      float r = (bruce.pixels[index] >> 16) & 0xFF;
      float g = (bruce.pixels[index] >> 8) & 0xFF;
      float b = bruce.pixels[index] & 0xFF;

      // now get the normalized values for the colors, because toxiclibs color values goes from 0-1
      r = r / 255;
      g = g / 255;
      b = b / 255;
      
      // get 0-1 HSB color values from 0-1 RGB values
      float[] colorValues = TColor.rgbToHSV(r, g, b);
      
      // draw the image with small rectangles
      fill(colorValues[0], colorValues[1], colorValues[2]);
      rect(x, y, 1, 1);
    }
  }
}