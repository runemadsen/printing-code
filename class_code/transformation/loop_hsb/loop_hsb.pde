void setup()
{
  size(800, 600);
  smooth();
  background(255);
  noStroke();
  colorMode(HSB, 1, 1, 1);

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

      float h = hue(bruce.pixels[index]);
      float s = saturation(bruce.pixels[index]);
      float b = brightness(bruce.pixels[index]);

      fill(h, s, b);
      rect(x, y, 1, 1);
    }
  }

}
