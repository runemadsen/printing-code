import toxi.geom.*;
import toxi.color.*;

float a = 10;
float b = 20;
float c = 30;
float d = 40;

PImage bruce;
float ratioWidth;
float ratioHeight;
 
void setup() 
{
  size(1280, 800);
  smooth();
  colorMode(HSB, 1, 1, 1);

  // load image
  bruce = loadImage("bruce.jpg");
  bruce.loadPixels();

  // how much smaller in percent is the image?
  ratioWidth = (float) bruce.width / (float) width;
  ratioHeight = (float) bruce.height / (float) height;

  for (int y = 0; y <= height + c; y += c) 
  {
    for (int x = 0; x <= width + d; x += d)
    {
      pushMatrix();

      int index = 0;
      
      if((y/c) % 2 == 0)
      {
        index = int(x * ratioWidth) + int(y * ratioHeight) * bruce.width;
        translate(x, y);
      }
      else {
        index = int((x - b) * ratioWidth) + int(y * ratioHeight) * bruce.width;
        translate(x - b, y);
      }

      // if this index is out of bounds in the image
      if(index < 0)                 index = 0;
      else if(index >= bruce.pixels.length)    index = bruce.pixels.length - 1;

      // first get the color values. Even though we're in HSB mode, the color values are RGB in the image
      float re = (bruce.pixels[index] >> 16) & 0xFF;
      float gr = (bruce.pixels[index] >> 8) & 0xFF;
      float bl = bruce.pixels[index] & 0xFF;

      // create new TColor from normalized RGB values
      TColor pixelColor = TColor.newRGB(re / 255, gr / 255, bl / 255);
    
      stroke(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      fill(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      quad(0, -c, b, -b, 0, -a, -b, -b);

      pixelColor.darken(0.3);
      stroke(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      fill(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      quad(-b, -b, 0, -a, 0, a, -b, 0);
      
      pixelColor.lighten(0.5);
      pixelColor.desaturate(0.8);
      stroke(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      fill(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      quad(b, -b, b, 0, 0, a, 0, -a);

      popMatrix();
    }
  }
}
