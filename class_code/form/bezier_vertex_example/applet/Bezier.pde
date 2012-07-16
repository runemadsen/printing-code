class Bezier
{
  float cx1;
  float cy1;
  float cx2;
  float cy2;
  float x;
  float y;
  
  Bezier(float _cx1, float _cy1, float _cx2, float _cy2, float _x, float _y)
  {
    cx1 = _cx1;
    cy1 = _cy1;
    cx2 = _cx2;
    cy2 = _cy2;
    x = _x;
    y = _y;
  }
   
  void drawHelpers()
  {
    noStroke();
    fill(255, 0, 0);
    ellipse(x, y, 7, 7);
    
    fill(0, 0, 255);
    ellipse(cx1, cy1, 4, 4);
    ellipse(cx2, cy2, 4, 4);
    
    stroke(170);
    noFill();
    line(x, y, cx1, cy1);
    line(x, y, cx2, cy2);
  }
}
