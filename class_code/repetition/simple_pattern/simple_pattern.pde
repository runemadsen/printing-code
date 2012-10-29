void setup()
{
  size(1280, 800);
  smooth();
  background(230, 230, 230);
  noStroke();

  PVector loc = new PVector(0, 0);
  int symbolSize = 80;
  int margin = symbolSize / 5;
  int lineWidth = symbolSize / 8;

  while(loc.y < height)
  {
    pushMatrix();
    translate(loc.x, loc.y);

    fill(200, 130, 115);
    ellipse(0, 0, symbolSize, symbolSize);

    fill(180, 180, 180);
    ellipse(0, 0, symbolSize * 0.8, symbolSize * 0.8);

    fill(50, 50, 50);
    ellipse(0, 0, symbolSize * 0.3, symbolSize * 0.3);

    popMatrix();

    // update position
    loc.x += symbolSize * 0.8;

    if(loc.x > width)
    {
      loc.x = 0;
      loc.y += symbolSize * 0.8;
    }
  }

  saveFrame("simple_pattern.png");

}