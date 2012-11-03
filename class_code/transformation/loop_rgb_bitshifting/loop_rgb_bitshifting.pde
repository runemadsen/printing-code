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

      float r = (bruce.pixels[index] >> 16) & 0xFF;
      int g = (bruce.pixels[index] >> 8) & 0xFF;
      int b = bruce.pixels[index] & 0xFF;
      
      fill(r, g, b);
      rect(x, y, 1, 1);
    }
  }

}