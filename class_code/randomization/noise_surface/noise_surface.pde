float noiseVal;
float noiseScale=0.005;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);

  // loop through every pixel on the screen
  for (int y = 0; y < height; y++) 
  {
    for (int x = 0; x < width; x++) 
    {
      noiseDetail(3,0.5);
      noiseVal = noise((x) * noiseScale, (y) * noiseScale);
      stroke(0, 90, 30 + (noiseVal*60));
      point(x,y);
    }
  }

  saveFrame("grab.jpg");
}