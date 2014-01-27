void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  stroke(255);
  noFill();
  strokeWeight(3);

  int xStep = 15;

  /* Draw normal random values
  --------------------------------------------------- */

  translate(0, 200);
  beginShape();
  for(int i = 0; i < width; i += xStep)
  {
    float ranY = random(100);
    vertex(i, ranY);
  }
  endShape();

  /* Draw perlin noise values
  --------------------------------------------------- */

  translate(0, 300);
  beginShape();
  float noiseCount = 0;

  for(int i = 0; i < width; i += xStep)
  {
    float ranY = noise(noiseCount);
    vertex(i, ranY * 100);

    noiseCount += 0.2;
  }
  endShape();
}