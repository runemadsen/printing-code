import geomerative.*;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  fill(0);
  noStroke();

  translate(450, 560);
  
  int fontSize = 700;
  
  // initialize the geomerative library
  RG.init(this);
  
  // create a new font
  RFont font = new RFont("FreeSans.ttf", fontSize, RFont.LEFT);

  // before we generate anything, we need to tell the library how long we want between the points of the font
  //RCommand.setSegmentLength(20);

  // We can also tell it how to space them out
  //RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  //RCommand.setSegmentator(RCommand.UNIFORMSTEP);
  //RCommand.setSegmentator(RCommand.ADAPTATIVE); 

  // get a polygon from a single character.
  RPolygon polygon = font.toGroup('a');

  // because a character has multiple contours (the whole in the 'a' is one, the outline another),
  // let's loop through all the contours first
  for(int i = 0; i < polygon.contours.length; i++)
  {
    // for each contour, let's loop through all the points
    RContour curContour = polygon.contours[i];
    for(int j = 0; j < curContour.points.length; j++)
    {
      // now for each RPoint (which is a vector), make an ellipse
      RPoint curPoint = curContour.points[j];
      ellipse(curPoint.x, curPoint.y, 10, 10);
    }
  }
}