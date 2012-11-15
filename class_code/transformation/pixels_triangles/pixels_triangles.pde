import toxi.geom.*;
import toxi.color.*;

PImage bruce;
int symbolSize = 20;
float ratioWidth;
float ratioHeight;

void setup()
{
  size(1280, 800);
  background(255);
  colorMode(HSB, 1, 1, 1);
  noStroke();

  // load image and figure out aspect ratio
  bruce = loadImage("bruce.jpg");
  ratioWidth = (float) bruce.width / (float) width;
  ratioHeight = (float) bruce.height / (float) height;

  translate(symbolSize, symbolSize);
  
  for(int x = 0; x < width; x += symbolSize)
  {
    for(int y = 0; y < height; y += symbolSize)
    {
      drawTile(x, y);
    }
  }
}

void drawTile(int x, int y)
{
  pushMatrix();
  translate(x, y);
  for(int i = 0; i < 4; i++)
  {
    TColor col1 = getColorAtPixel(x, y);
    fill(col1.hue(), col1.saturation(), col1.brightness());
    triangle(0, 0, 0, symbolSize, symbolSize, symbolSize);
    
    col1.lighten(random(-0.2, 0.2));
    fill(col1.hue(), col1.saturation(), col1.brightness());
    triangle(0, 0, symbolSize, 0, symbolSize, symbolSize);
    rotate(radians(90));
  }
  popMatrix();
}

TColor getColorAtPixel(int x, int y)
{
    int index = int(x * ratioWidth) + int(y * ratioHeight) * bruce.width;
    
    // if this index is out of bounds in the image
    if(index < 0)                 index = 0;
    else if(index > bruce.pixels.length - 1)    index = bruce.pixels.length - 1;

    // first get the color values. Even though we're in HSB mode, the color values are RGB in the image
    float re = (bruce.pixels[index] >> 16) & 0xFF;
    float gr = (bruce.pixels[index] >> 8) & 0xFF;
    float bl = bruce.pixels[index] & 0xFF;

    // create new TColor from normalized RGB values
    return TColor.newRGB(re / 255, gr / 255, bl / 255);
}