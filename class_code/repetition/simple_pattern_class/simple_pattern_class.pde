void setup()
{
  size(1280, 800);
  smooth();
  background(230, 230, 230);
  noStroke();

  Pattern p = new Pattern(200, 200, 800, 400, 80);
  p.display();
}