// Substitution rule:
// http://web.media.mit.edu/~black/tiles/aperiodic.html

int maxLevel = 0;
int startSize = 0;

void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  stroke(0);

  // draw single shape
  //maxLevel = 5;
  //startSize = 600;
  //translate(200, 100);
  //drawL(0, 0, startSize, 0, 0, color(60, 100, 150));
  
  // fill the entire thing
  maxLevel = 6;
  startSize = 600;
  translate(0, -850);
  drawL(0, 0, 1700, 0, 0, color(60, 100, 150));
}

void drawL(float x, float y, float sideLength, float rot, int level, int col)
{
  pushMatrix();
  translate(x, y);
  rotate(radians(rot));
  fill(col);
  beginShape();
  vertex(0, 0);
  vertex(0, sideLength);
  vertex(sideLength, sideLength);
  vertex(sideLength, sideLength/2);
  vertex(sideLength/2, sideLength/2);
  vertex(sideLength / 2, 0);
  endShape(CLOSE);
  
  if(level < maxLevel)
  {
    level++;
    
    drawL(sideLength/4, sideLength/4, sideLength/2, 0, level, color(60, 100, 150));
    drawL(sideLength/2, 0, sideLength/2, 90, level, color(140, 180, 220));
    drawL(0, sideLength/2, sideLength/2, 0, level, color(40, 40, 40));
    drawL(sideLength/2, sideLength, sideLength/2, -90, level, color(50, 60, 70));
  }

  popMatrix();
}

