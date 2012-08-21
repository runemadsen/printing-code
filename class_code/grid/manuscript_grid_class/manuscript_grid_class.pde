Column col;

void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  col = new Column(200, 100, 880, 600);
  
  // draw the grid container
  noFill();
  stroke(255, 0, 0);
  rect(col.x, col.y, col.w, col.h);
  
  // place 4 ellipses inside the grid
  noStroke();
  fill(30);
  ellipseMode(CORNER);
  ellipse(col.x, col.y, col.w/2, col.h/2);
  ellipse(col.x + col.w/2, col.y, col.w/2, col.h/2);
  ellipse(col.x, col.y + col.h/2, col.w/2, col.h/2);
  ellipse(col.x + col.w/2, col.y + col.h/2, col.w/2, col.h/2);
}
