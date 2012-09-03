import geomerative.*;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  
  int fontSize = 200;
  
  // initialize the geomerative library
  RG.init(this);
  
  // create a new font
  RFont font = new RFont("FreeSans.ttf", fontSize, RFont.LEFT);

  // tell library we want 11px between each point on the font path
  RCommand.setSegmentLength(11);
  
  // tell the library that the points should have same distance
  //RCommand.setSegmentator(RCommand.UNIFORMLENGTH);
  //RCommand.setSegmentator(RCommand.UNIFORMSTEP);
  //RCommand.setSegmentator(RCommand.ADAPTATIVE);  

  // get the points on font outline.
  RGroup grp;
  grp = font.toGroup("H");
  grp = grp.toPolygonGroup();
  RPoint[] pnts = grp.getPoints();

  translate(100, 300);

  // dots
  fill(0);
  noStroke();
  for (int i = 0; i < pnts.length; i++ ) 
  {
    ellipse(pnts[i].x, pnts[i].y, 2, 2);
  }
  
  translate(0, 300);
  font.draw("Hello World!");
}
