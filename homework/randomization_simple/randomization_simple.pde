import toxi.color.*;
import toxi.util.datatypes.*;
import geomerative.*;

WeightedRandomSet<ColorList> colorlists = new WeightedRandomSet<ColorList>();

void setup()
{
  size(800, 800);
  RG.init(this);
  background(255);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1, 1);

  setupColors();
  
  /* Create lines 
  ------------------------------------------------------------ */
  
  ArrayList<RPoint> linePoints = new ArrayList<RPoint>();

  float xPos = 0;
  float yPos = 0;

  while(xPos < 1000)
  {
    // add point on line
    linePoints.add( new RPoint(xPos, yPos) );

    // add to the positions so they update for next run
    xPos += random(60, 150);
    yPos =  noise(xPos / 150) * 100;
  }
  
  /* Draw shapes
  ------------------------------------------------------------ */
  
  translate(0, 500);

  // loop through each point
  for(int i = 0; i < linePoints.size() - 1; i++)
  {
    // first find a random height for this rectangle
    float ranHeight = random(150, 350);

    // then find all the points we need for this rectangle
    RPoint bottomLeft  = linePoints.get(i);
    RPoint bottomRight = linePoints.get(i + 1);

    // and calculcate the top points from this
    RPoint topLeft = new RPoint(bottomLeft);
    topLeft.sub(new RPoint(0, ranHeight));

    RPoint topRight = new RPoint(bottomRight);
    topRight.sub(new RPoint(0, ranHeight));

    // get a random color!
    ColorList selColorlist = colorlists.getRandom();

    // now draw the triangles to make the real rectangles
    noStroke();
    fill(selColorlist.get(0).toARGB());
    triangle(bottomLeft.x, bottomLeft.y, topLeft.x, topLeft.y, topRight.x, topRight.y);
    
    fill(selColorlist.get(1).toARGB(), 0.8);
    triangle(topLeft.x, topLeft.y, topRight.x, topRight.y, bottomRight.x, bottomRight.y);

    // aaaand the line
    strokeWeight(2);
    stroke(0, 0, 0.5);
    line(bottomLeft.x, bottomLeft.y, bottomRight.x, bottomRight.y);
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
