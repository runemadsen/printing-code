void setup()
{
  size(1280, 800);
  smooth();
  background(255);
  noFill();
  strokeWeight(2);
  stroke(30);

  drawRect(100, 100, width - 200, height - 200);
}

void drawRect(float x, float y, float w, float h)
{
  // first draw a rectangle
  pushMatrix();
  translate(x, y);
  rect(0, 0, w, h);
  popMatrix();

  // then figure out if we need to draw another
  boolean splitWidth = random(1) > 0.5;
  float splitWhere = random(0.3, 0.8);

  // if we're splitting the width
  if(splitWidth && w > 100)
  {
    drawRect(x, y, w * splitWhere, h);
    drawRect(x + (w * splitWhere), y, w * (1 - splitWhere), h);
  }
  // else if we're splitting the height
  else if(h > 100)
  {
    drawRect(x, y, w, h * splitWhere);
    drawRect(x, y + (h * splitWhere), w, h * (1 - splitWhere));
  }
}
