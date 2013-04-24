import toxi.geom.*;
import toxi.color.*;

void setup()
{
  size(800, 600);
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
      TColor pixelColor = TColor.newARGB(bruce.pixels[index]); // notice the piel val is still RGB
      
      //pixelColor.adjustConstrast(0.2);
      //pixelColor.rotateRYB(220);
      //pixelColor.complement();
     pixelColor.desaturate(0.5); 
      
      fill(pixelColor.hue(), pixelColor.saturation(), pixelColor.brightness());
      rect(x, y, 1, 1);
    }
  }
}
