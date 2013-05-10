import toxi.geom.*;
import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

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

  // create a color list from some normalized HSB color values
  ColorList colors = new ColorList();
  colors.add( TColor.newHSV(0.61, 0.96, 0.19) );
  colors.add( TColor.newHSV(0.37, 0.27, 0.76) );
  colors.add( TColor.newHSV(0.52, 0.95, 0.54) );
  colors.add( TColor.newHSV(0.50, 0.49, 0.63) );
  colors.add( TColor.newHSV(0.55, 0.98, 0.35) );
  colors.add( TColor.newHSV(0.14, 0.57, 0.86) );
  colors.add( TColor.newHSV(0.72, 0.48, 0.40) );
  colors.add( TColor.newHSV(0.01, 0.75, 0.87) );
  colors.add( TColor.newHSV(0.02, 0.35, 0.68) );

  translate((width/2) - (bruce.width/2), (height/2) - (bruce.height/2));

  // loop through image and update pixels
  for(int x = 0; x < bruce.width; x++)
  {
    for(int y = 0; y < bruce.height; y++)
    {
      int index = x + y * bruce.width;
      TColor pixelColor = TColor.newARGB(bruce.pixels[index]);
      
      // loop through the list and get the closest color to this pixel
      TColor closestColor = TColor.newHSV(0, 0, 0);
      float minDistance = 1;
      for(int i = 0; i < colors.size(); i++)
      {
        float thisDistance = pixelColor.distanceToHSV(colors.get(i));
        if(thisDistance < minDistance)
        {
          minDistance = thisDistance;
          closestColor = colors.get(i);
        }
      }

      // set pixel with hsb values 
      bruce.pixels[index] = color(closestColor.toARGB());
    }
  }

  bruce.updatePixels();
  image(bruce, 0, 0);
}