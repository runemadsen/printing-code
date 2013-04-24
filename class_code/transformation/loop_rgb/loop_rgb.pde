void setup()
{
  size(800, 600);
  smooth();
  background(255);
  noStroke();

  // load image
  PImage bruce = loadImage("bruce.jpg");
  bruce.loadPixels();

  //translate((width/2) - (bruce.width/2), (height/2) - (bruce.height/2));

  // loop through image and draw each pixel
  for(int x = 0; x < bruce.width; x++)
  {
    for(int y = 0; y < bruce.height; y++)
    {
      int index = x + y * bruce.width;

      float r = red(bruce.pixels[index]);
      float g = green(bruce.pixels[index]);
      float b = blue(bruce.pixels[index]);

      r = 255 - r;
      g = 255 - g;
      b = 255 - b;
      fill(r, g, b);
      rect(x * 3, y * 3, 3, 3);
    }
  }

}
