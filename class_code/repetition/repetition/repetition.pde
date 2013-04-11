void setup()
{  
  size(800, 1048);
  background(255);
  smooth();

  PFont helvetica = createFont("HelveticaNeue-BoldItalic", 50);
  float numCols = int(random(3, 9));
  float numRows = int(random(5, 10));
  float pageMargin = int(random(30));
  float spacingX = (width - (2*pageMargin)) / numCols;
  float spacingY = (height - (2*pageMargin)) / numRows;
  float shapeDiameter = random(spacingX * 0.1, spacingX * 0.9);
  int textIndex = int(random(numCols * numRows));
  int redHeartIndex = int(random(numCols * numRows));

  translate(pageMargin + (spacingX/2), pageMargin + (spacingY/2));
  
  int count = 0;

  for(int x = 0; x < numCols; x++)
  {
    for(int y = 0; y < numRows; y++)
    {
      if(count == textIndex)            drawText(x * spacingX, y * spacingY, shapeDiameter, #138b29, helvetica);
      else if(count == redHeartIndex)   drawHeart(x * spacingX, y * spacingY, shapeDiameter, #FF0000);
      else                              drawHeart(x * spacingX, y * spacingY, shapeDiameter, #138b29);
      count++;
    } 
  }
}

void drawHeart(float x, float y, float d, int c)
{
  pushMatrix();
  translate(x, y);

  float r = d/2;

  noStroke();
  fill(c);
  beginShape();
    vertex(0, -r*0.4);
    bezierVertex(r * 0.2, -r * 0.9, r * 0.7, -r * 0.8, r*0.9, -r*0.45);
    bezierVertex(r * 1.1, -r * 0.1, r, r * 0.2, r*0.60, r*0.45);
    bezierVertex(r * 0.5, r * 0.5, r * 0.1, r * 0.6, 0, r);
    bezierVertex(-r * 0.1, r * 0.6, -r * 0.5, r * 0.5, -r*0.60, r*0.45);
    bezierVertex(-r, r * 0.2, -r * 1.1, -r * 0.1, -r*0.9, -r*0.45);
    bezierVertex(-r * 0.7, -r * 0.8, -r * 0.2, -r * 0.9, 0, -r*0.4);
  endShape();
  
  popMatrix();
}

void drawText(float x, float y, float d, int c, PFont helvetica)
{
  fill(c);
  textFont(helvetica, d * 0.3);
  pushMatrix();
  translate(x, y);
  text("Earth", -d * 0.3, -d * 0.3);
  text("Day...", -d * 0.6, -d * 0.02);
  text("'95", d * 0.15, d * 0.25);
  popMatrix();
}