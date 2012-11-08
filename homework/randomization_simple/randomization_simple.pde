import toxi.geom.*;
import toxi.color.*;
import toxi.util.datatypes.*;

ArrayList<Vec2D> points = new ArrayList();

FloatRange shapeWidth        = new FloatRange(60, 150);
FloatRange shapeHeight       = new FloatRange(150, 350);
FloatRange shapeHeightAdjust = new FloatRange(0, 30);

// setup colors for weighted randomness
WeightedRandomSet<ColorList> colorlists = new WeightedRandomSet<ColorList>();

void setup()
{
  size(800, 800);
  background(255);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1, 1);

  setupColors();
  
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

    // get a random color!
    ColorList selColorlist = colorlists.getRandom();

    // don't forget that gray line underneath
    strokeWeight(2);
    stroke(0.16, 0.0, 0.45);
    line(leftPoint.x, leftPoint.y, rightPoint.x, rightPoint.y);
    strokeWeight(1);
    
    // now draw the triangles!!!
    TColor col = selColorlist.get(0);
    fill(col.hue(), col.saturation(), col.brightness());
    stroke(col.hue(), col.saturation(), col.brightness());
    triangle(leftPoint.x, leftPoint.y, leftPoint.x, leftPoint.y - ranLength, rightPoint.x, rightPoint.y - ranLength);
    
    col = selColorlist.get(1);
    fill(col.hue(), col.saturation(), col.brightness(), 0.8);
    stroke(col.hue(), col.saturation(), col.brightness());
    triangle(rightPoint.x, rightPoint.y, rightPoint.x, rightPoint.y - ranLength, leftPoint.x, leftPoint.y - ranLength);
  }
}

/* Setup Colors
------------------------------------------------------------ */

void setupColors()
{
  // red colors
  ColorList colors1 = new ColorList();
  colors1.add( TColor.newHSV(0, 1, 0.3) );
  colors1.add( TColor.newHSV(0, 0.92, 0.51) );
  colorlists.add(colors1, 2);
  
  // green colors
  ColorList colors2 = new ColorList();
  colors2.add( TColor.newHSV(0.24, 0.84, 0.2) );
  colors2.add( TColor.newHSV(0.24, 0.79, 0.38) );
  colorlists.add(colors2, 4);
  
  // blue colors
  ColorList colors3 = new ColorList();
  colors3.add( TColor.newHSV(0.57, 0.28, 0.48) );
  colors3.add( TColor.newHSV(0.57, 0.18, 0.59) );
  colorlists.add(colors3, 1);
  
  // yellow colors
  ColorList colors4 = new ColorList();
  colors4.add( TColor.newHSV(0.12, 0.94, 0.59) );
  colors4.add( TColor.newHSV(0.12, 0.91, 0.89) );
  colorlists.add(colors4, 3);
}
