import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  background(255);
  strokeWeight(2);

  RG.init(this);
  RCommand.setSegmentLength(25);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  translate(100, 100);

  // first we make our line
  RShape line = RShape.createLine(0, 0, 400, 400);
  line.draw();

  translate(500, 0);

  // then we convert our line to a RPolygon
  RPolygon lineOutline = line.toPolygon();

  // our RShape only holds a single path with a single contour
  // so let's just loop through those points
  for(int i = 0; i < lineOutline.contours[0].points.length; i++)
  {
    // grab each point
    RPoint curPoint = lineOutline.contours[0].points[i];
    curPoint.x += random(-3, 3);
    curPoint.y += random(-3, 3);  
  } 

  lineOutline.draw(); 
}