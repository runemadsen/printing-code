ArrayList beziers = new ArrayList();

void setup()
{
  size(600, 600);
  smooth();
  
  beziers.add( new Bezier(80, 0, 80, 75, 30, 75) );
  beziers.add( new Bezier(50, 80, 60, 25, 30, 20) );
}

void draw()
{
  background(255);
  
  stroke(100);
  noFill();
  
  // draw bezier shape
  beginShape();
  vertex(30, 20);
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    bezierVertex(b.cx1, b.cy1, b.cx2, b.cy2, b.x, b.y);
  }
  endShape();
  
  // draw extra helpers
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    b.drawHelpers();
  }
}
