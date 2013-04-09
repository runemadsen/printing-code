import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  background(255);
  strokeWeight(2);

  RG.init(this);

  translate(300, 300);

  // First draw the hous exactly like in the last example
  RShape house = new RShape();

  house.addLineTo(300, 0);
  house.addLineTo(300, 200);
  house.addLineTo(0, 200);
  house.addLineTo(0, 0);

  house.addMoveTo(70, 200);
  house.addLineTo(70, 70);
  house.addLineTo(140, 70);
  house.addLineTo(140, 200);

  house.addMoveTo(0, 0);
  house.addLineTo(150, -100);
  house.addLineTo(300, 0);

  // draw the house
  house.draw();

  // Then convert the RShape to an RPolygon, creating the points on the outline, so we can randomize them a bit
  // first we specify how we want it to convert
  RCommand.setSegmentLength(25);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  // then we convert our RShape to an RPolygon
  RPolygon houseOutline = house.toPolygon();

  // now that we have multiple RPath objects, they have turned into multiple RContour objects
  // first loop through each contour
  for(int i = 0; i < houseOutline.contours.length; i++)
  {
    RContour curContour= houseOutline.contours[i];
    // then loop through each point in the contour
    for(int j = 0; j < curContour.points.length; j++)
    {
      // grab this point
      RPoint curPoint = curContour.points[j];
      // randomize a bit. Remember, because we're manipulating an object, and this object is in an array 
      // of our polygon, we will actually change the RPolygon
      // we don't want to change the line endings, so we check j
      if(j > 2 && j < curContour.points.length - 2)
      {
        curPoint.x += random(-3, 3);
        curPoint.y += random(-3, 3);  
      }
    }
  }

  // now that we changed the points, let's draw the house outline
  translate(400, 0);
  houseOutline.draw();
}