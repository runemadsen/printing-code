import toxi.geom.*;
import toxi.color.*;
import toxi.util.datatypes.*;

ArrayList<Ray2D> rays = new ArrayList();

FloatRange degreeRange       = new FloatRange(-100, -80);
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
  colorMode(HSB, 1, 1, 1);

  setupColors();
  
  /* Create line points
  ------------------------------------------------------------ */
  
  float xPos = 0;
  float yPos = 0;
  float noiseCount = 0;
  
  while(xPos < width + 300)
  {
    // where does the line start?
    Vec2D linePos = new Vec2D(xPos, noise(noiseCount) * 100);
    
    // what direction has the line?
    float deg = degreeRange.pickRandom();
    Vec2D lineDir = new Vec2D(cos(radians(deg)), sin(radians(deg)));
    
    // create new ray from the two vectors: line and direction
    rays.add( new Ray2D(linePos,lineDir));
    
    // for the next point, pick a random width
    xPos += shapeWidth.pickRandom();
    noiseCount += 0.5;
  }
  
  /* Draw shapes
  ------------------------------------------------------------ */
  
  translate(0, height * 0.7);
  
  for(int i = 0; i < rays.size() - 1; i++)
  {
    // first find this ray and the next ray in the array
    Ray2D leftRay = rays.get(i);
    Ray2D rightRay = rays.get(i + 1);
    
    // find random length of this shape
    float ranLength = shapeHeight.pickRandom();
    
    // from the rays and the random length, get a line2d object slightly randomized
    Line2D leftLine = leftRay.toLine2DWithPointAtDistance(ranLength);
    Line2D rightLine = rightRay.toLine2DWithPointAtDistance(ranLength);
    
    // now find the mid point between these lines, by creating cross lines and getting the intersection
    Line2D crossLeft = new Line2D(new Vec2D(leftLine.a.x, leftLine.a.y), new Vec2D(rightLine.b.x, rightLine.b.y));
    Line2D crossRight = new Line2D(new Vec2D(rightLine.a.x, rightLine.a.y), new Vec2D(leftLine.b.x, leftLine.b.y));
    Vec2D mid = crossLeft.intersectLine(crossRight).getPos();

    // get a random color!
    ColorList selColorlist = colorlists.getRandom();

    // don't forget that gray line underneath
    strokeWeight(2);
    stroke(0.16, 0.0, 0.45);
    line(leftLine.a.x, leftLine.a.y, rightLine.a.x, rightLine.a.y);
    strokeWeight(1);
    
    // now draw the triangles!!!
    TColor col = selColorlist.get(0);
    fill(col.hue(), col.saturation(), col.brightness());
    stroke(col.hue(), col.saturation(), col.brightness());
    triangle(leftLine.a.x, leftLine.a.y, leftLine.b.x, leftLine.b.y, mid.x, mid.y);
    
    col = selColorlist.get(1);
    fill(col.hue(), col.saturation(), col.brightness());
    stroke(col.hue(), col.saturation(), col.brightness());
    triangle(leftLine.b.x, leftLine.b.y, rightLine.b.x, rightLine.b.y, mid.x, mid.y);
    
    col = selColorlist.get(2);
    fill(col.hue(), col.saturation(), col.brightness());
    stroke(col.hue(), col.saturation(), col.brightness());
    triangle(rightLine.a.x, rightLine.a.y, rightLine.b.x, rightLine.b.y, mid.x, mid.y);
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
  colors1.add( TColor.newHSV(0, 0.96, 0.85) );
  colorlists.add(colors1, 2);
  
  // green colors
  ColorList colors2 = new ColorList();
  colors2.add( TColor.newHSV(0.24, 0.84, 0.2) );
  colors2.add( TColor.newHSV(0.24, 0.79, 0.38) );
  colors2.add( TColor.newHSV(0.27, 0.61, 0.64) );
  colorlists.add(colors2, 4);
  
  // blue colors
  ColorList colors3 = new ColorList();
  colors3.add( TColor.newHSV(0.57, 0.28, 0.48) );
  colors3.add( TColor.newHSV(0.57, 0.18, 0.59) );
  colors3.add( TColor.newHSV(0.56, 0.13, 0.82) );
  colorlists.add(colors3, 1);
  
  // yellow colors
  ColorList colors4 = new ColorList();
  colors4.add( TColor.newHSV(0.12, 0.94, 0.59) );
  colors4.add( TColor.newHSV(0.12, 0.91, 0.89) );
  colors4.add( TColor.newHSV(0.16, 0.83, 0.99) );
  colorlists.add(colors4, 3);
}
