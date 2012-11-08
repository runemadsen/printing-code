import toxi.geom.*;
import toxi.color.*;
import toxi.util.datatypes.*;

ArrayList<Vec2D> points = new ArrayList();

FloatRange shapeWidth        = new FloatRange(60, 150);
FloatRange shapeHeight       = new FloatRange(150, 350);
FloatRange shapeHeightAdjust = new FloatRange(0, 30);

void setup()
{
  size(800, 800);
  background(255);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1, 1);
  
  /* Create line points
  ------------------------------------------------------------ */
  
  float xPos = 0;
  float noiseCount = 0;
  
  while(xPos < width + 300)
  {
    // get the random point
    Vec2D linePos = new Vec2D(xPos, noise(noiseCount) * 100);
    points.add(linePos);
    noiseCount += 0.5;

    xPos += shapeWidth.pickRandom();
  }
  
  /* Draw shapes
  ------------------------------------------------------------ */
  
  translate(0, height * 0.7);
  
  for(int i = 0; i < points.size() - 1; i++)
  {
    // first find this point and the next point in the array
    Vec2D leftPoint = points.get(i);
    Vec2D rightPoint = points.get(i + 1);
    
    // find random length of this shape
    float ranLength = shapeHeight.pickRandom();

    // don't forget that gray line underneath
    strokeWeight(2);
    stroke(0, 0, 0, 0.2);
    line(leftPoint.x, leftPoint.y, rightPoint.x, rightPoint.y);
    strokeWeight(1);
    
    // now draw the triangles!!!
    fill(0, 0, 0, 0.4);
    triangle(leftPoint.x, leftPoint.y, leftPoint.x, leftPoint.y - ranLength, rightPoint.x, rightPoint.y - ranLength);
    
    fill(0, 0, 0, 0.8);
    triangle(rightPoint.x, rightPoint.y, rightPoint.x, rightPoint.y - ranLength, leftPoint.x, leftPoint.y - ranLength);
  }
}
