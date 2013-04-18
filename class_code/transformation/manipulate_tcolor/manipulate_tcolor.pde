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
      TColor pixelColor = TColor.newARGB(bruce.pixels[index]);
      
      pixelColor.adjustConstrast(0.2); // contrast the image by 20%
      //pixelColor.desaturate(0.5); // desature the pixel color by 50%
      //pixelColor.rotateRYB(220); // rotate the color 220 degrees on the RYB hue wheel
      //pixelColor.complement(); // turn pixel into complementary color

      // set pixel with hsb values 
      bruce.pixels[index] = color(pixelColor.toARGB());
    }
  }

  bruce.updatePixels();
  image(bruce, 0, 0);
}