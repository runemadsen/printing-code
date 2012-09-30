// Substitution rule:
// http://tilings.math.uni-bielefeld.de/substitution_rules/t2000

float factor = sqrt(3);
int maxLevel = 0;
int startSize = 0;

void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  stroke(0);

  // draw single triangle
  maxLevel = 4;
  startSize = 1000;
  translate(width / 2, 200);
  drawTriangle(0, 0, startSize, 0, 0, false, color(0, 60, 130));

  // or fill the screen
  //startSize = 5000;
  //maxLevel = 10;
  //translate(width / 2, -500);
  //drawTriangle(0, 0, startSize, 0, 0, false, color(0, 60, 130));
  
  saveFrame("grab.png");
}

void drawTriangle(float x, float y, float bottomSize, float rot, int level, boolean drawSingle, int col)
{
  // pythagoras theorem on half right-sided triangle
  float b = bottomSize / 2;
  float c = bottomSize / factor;
  float a = sqrt(sq(c) - sq(b)); // a2 + b2 = c2

  pushMatrix();
  translate(x, y);
  rotate(radians(rot));
  fill(col);
  triangle(0, 0, -b, a, b, a);
  
  if(drawSingle && level < maxLevel)
  {
    level++;
    drawTriangle(0, 0, bottomSize, 0, level, false, color(0, 60, 130));
  }
  else if(level < maxLevel)
  {
    level++;
    
    drawTriangle(-(a / factor), a, c, 150, level, false, color(0, 60, 130));
    drawTriangle(a / factor, a, c, -150, level, false, color(0, 60, 130));

    float childBottom = c / factor;
    float childB = childBottom / 2;
    float childC = childBottom / factor;
    float childA = sqrt(sq(childC) - sq(childB)); // a2 + b2 = c2

    // all these small triangles should draw a big one, not subdivide immediately. 
    drawTriangle(0, a - childA, childBottom, 0, level, true, color(80, 200, 250));
    drawTriangle(0, a - childA, childBottom, 120, level, true, color(80, 200, 250));
    drawTriangle(0, a - childA, childBottom, -120, level, true, color(80, 200, 250));
  }

  popMatrix();
}

