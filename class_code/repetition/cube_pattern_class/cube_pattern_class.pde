void setup()
{
  size(1280, 800);
  smooth();
  background(230, 230, 230);
  noStroke();

  Pattern p = new Pattern(250, 200, 800, 400, 10);
  p.display();
}