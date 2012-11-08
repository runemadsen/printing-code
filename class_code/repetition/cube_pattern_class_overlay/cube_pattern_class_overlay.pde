void setup()
{
  size(1280, 800);
  smooth();
  background(230, 230, 230);
  noStroke();

  Pattern p1 = new Pattern(0, 0, width + 100, height + 100, 10);
  p1.display();

  Pattern p2 = new Pattern(0, 0, width + 100, height + 100, 30);
  p2.display();
}