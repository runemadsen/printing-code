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
  translate(450, 200);
  fill(0, 0, 0.5);
  RShape wave = new RShape();
  wave.addMoveTo(0, 100);
  wave.addBezierTo(0, 100, 50, 0, 100, 100);
  wave.addBezierTo(100, 100, 150, 200, 200, 100);
  wave.addBezierTo(200, 100, 250, 0, 300, 100);
  wave.addLineTo(300, 300);
  wave.addLineTo(0, 300);
  
  // draw it at 0, 0
  wave.draw();

  stroke(0);
  noFill();

  // because we're only adding single points, we only have 1 path in the paths array
  RPath wavePath = wave.paths[0];

  // loop over all the rcommands in the path
  for(int i = 0; i < wavePath.commands.length; i++)
  {
    RCommand command = wavePath.commands[i];

    // draw an ellipse at the start point
    RPoint start = command.startPoint;
    ellipse(start.x, start.y, 8, 8);

    // draw an ellipse at the end point
    RPoint end = command.endPoint;
    ellipse(end.x, end.y, 8, 8);

    // check if this line has controlpoints, and draw them if they are there
    // this is only for beziers
    if(command.controlPoints != null)
    {
      // draw a line from the first to the second controlpoint
      line(command.controlPoints[0].x, command.controlPoints[0].y, command.controlPoints[1].x, command.controlPoints[1].y);
    }
  }
}