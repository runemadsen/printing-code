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
      
      // get 0-1 HSB color values from 0-1 RGB values
      TColor pixelColor = TColor.newRGB(r / 255, g / 255, b / 255);
      
      // draw the image with small rectangles
      fill(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      rect(x, y, 1, 1);
    }
  }
}