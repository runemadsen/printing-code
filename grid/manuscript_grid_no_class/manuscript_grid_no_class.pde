int x = 200;
int y = 100;
int w = 800;
int h = 600;

void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  // draw the grid container
  noFill();
  stroke(255, 0, 0);
  rect(x, y, w, h);
  
  // place 4 ellipses inside the grid
  noStroke();
  fill(30);
  ellipseMode(CORNER);
  ellipse(x, y, w/2, h/2);
  ellipse(x + w/2, y, w/2, h/2);
  ellipse(x, y + h/2, w/2, h/2);
  ellipse(x + w/2, y + h/2, w/2, h/2);
}
