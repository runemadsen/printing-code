void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  noFill();
  strokeWeight(3);

  // draw 10 times across the screen
  for(int j = 0; j < 10; j++)
  {
    translate(0, 65);
    beginShape();
    float noiseCount = 0;

    // make the 5 last lines be different
    if(j > 4)
    {
      noiseSeed(round(random(100)));
      stroke(255);
    }
    else {
      stroke(220, 50, 50);
    }

    for(int i = 0; i < width; i += 10)
    {
      float ranY = noise(noiseCount);
      vertex(i, ranY * 100);

      noiseCount += 0.2;
    }
    endShape();
  }

  saveFrame("grab.png");
}