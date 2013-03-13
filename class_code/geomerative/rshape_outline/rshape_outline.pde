import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  colorMode(HSB, 1, 1, 1);
  background(1);
  noStroke();

  RG.init(this);

  // let's make our shape
  translate(250, 200);
  fill(0, 1, 1);
  RShape wave = new RShape();
  wave.addMoveTo(0, 100);
  wave.addBezierTo(0, 100, 50, 0, 100, 100);
  wave.addBezierTo(100, 100, 150, 200, 200, 100);
  wave.addBezierTo(200, 100, 250, 0, 300, 100);
  wave.addLineTo(300, 300);
  wave.addLineTo(0, 300);
  wave.draw();

  translate(450, 0);

  // tell geomerative how to convert the outline
  RCommand.setSegmentLength(25);
  RCommand.setSegmentator(RCommand.UNIFORMLENGTH);

  // turn the RShape into an RPolygon
  RPolygon wavePolygon = wave.toPolygon();

  // we have just 1 RContour in the RPolygon because we had one RPath in the RShape
  // otherwise you need to loop through the polygon contours like shown in typography/font_to_points_dots
  for(int i = 0; i < wavePolygon.contours[0].points.length; i++)
  {
    RPoint curPoint = wavePolygon.contours[0].points[i];
    ellipse(curPoint.x, curPoint.y, 5, 5);
  }
}