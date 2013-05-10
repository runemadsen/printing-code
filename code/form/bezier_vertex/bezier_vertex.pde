ArrayList beziers = new ArrayList();

void setup()
{
  size(400, 250);
  smooth();
  beziers.add( new Bezier(300, 30, 370, 125, 300, 125) );
}

void draw()
{
  background(255);
  
  // draw bezier shape
  strokeWeight(2);
  stroke(0);
  noFill();
  beginShape();
  vertex(100, 125);
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    b.drawBezier();
  }
  endShape();
  
  // draw extra helpers
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    b.drawHelpers();
  }
}

void mousePressed()
{
  boolean selected = false;
  
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    if(b.checkMouse())
    {
      selected = true;
    }
  }
  
  if(!selected)
  {
    beziers.add( new Bezier(mouseX - 30, mouseY, mouseX + 30, mouseY, mouseX, mouseY) );
  }
}

void mouseDragged()
{
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    b.drag();
  }
}

void mouseReleased()
{
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    b.stopDrag();
  }
}
