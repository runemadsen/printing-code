import geomerative.*;

float danceFactor = 2;

RFont font;
RPolygon polygon;

void setup() 
{
  size(1280, 800); 
  colorMode(HSB, 360, 100, 100);
  smooth();
  noFill();

  frameRate(15);

  // always initialize the library in setup
  RG.init(this);
  font = new RFont("FreeSans.ttf", 600, RFont.LEFT);

  RCommand.setSegmentLength(25);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  // get a polygon from a single character.
  polygon = font.toPolygon('a');
  
  background(360);
}

void draw() 
{
  // translate to the middle. Use plus in y because text is drawn from y and up
  translate((width / 2) - (polygon.getWidth() / 2), (height / 2) + (polygon.getHeight() / 2));

  // because a character has multiple contours (the whole in the 'a' is one, the outline another),
  // let's loop through all the contours first
  for(int i = 0; i < polygon.contours.length; i++)
  {
    RContour curContour = polygon.contours[i];

    // begin a shape and place a vertex point for each point in the contour
    beginShape();

    for(int j = 0; j < curContour.points.length; j++)
    {
      // now for each RPoint (which is a vector), make an ellipse
      RPoint curPoint = curContour.points[j];

      // before drawing the point, let's randomize the x,y values a little bit
      curPoint.x += random(-danceFactor, danceFactor);
      curPoint.y += random(-danceFactor, danceFactor);

      vertex(curPoint.x, curPoint.y);
    }

    endShape();
  }
}

