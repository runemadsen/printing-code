void setup()
{
  size(1280, 800);
  smooth();
  strokeWeight(3);
  stroke(30);
  
  // first draw a line using normal variables
  float x1 = 50;
  float y1 = 50;
  float x2 = 700;
  float y2 = 300;
  line(x1, y1, x2, y2);

  // now draw line with vectors. See how clean this is!!!!
  PVector start = new PVector(1100, 200);
  PVector end = new PVector(500, 750);
  line(start.x, start.y, end.x, end.y);

  saveFrame("vectors.png");
}