import geomerative.*;

void setup() 
{
  size(1280, 800); 
  background(255);
  smooth();
  noFill();
  RG.init(this);

  translate(200, 300);
  strokeWeight(2);

  // create an RCommand as a straight line and draw it
  RCommand cLine = new RCommand(0, 0, 200, 200);
  cLine.draw();

  // with all RCommands we have a bunch of interesting functions
  // here we are getting the point 60% along the line
  RPoint onLine = cLine.getPoint(0.6);
  ellipse(onLine.x, onLine.y, 10, 10);

  // here we're using the split function to split the line into 2 commands
  translate(200, 0);
  RCommand[] twoCommands = cLine.split(0.6);
  stroke(255, 0, 0);
  twoCommands[0].draw();
  stroke(0, 0, 255);
  twoCommands[1].draw();


  translate(300, 0);


  // you can do the exact same thing for a bezier curve
  stroke(0);
  RCommand cCurve = new RCommand(0, 100, 200, 100, 200, 0);
  cCurve.draw();

  // with all RCommands we have a bunch of interesting functions
  // here we are getting the point 60% along the curve
  RPoint onCurve = cCurve.getPoint(0.6);
  ellipse(onCurve.x, onCurve.y, 10, 10);

  // here we're using the split function to split the line into 2 commands
  translate(200, 0);
  twoCommands = cCurve.split(0.6);
  stroke(255, 0, 0);
  twoCommands[0].draw();
  stroke(0, 0, 255);
  twoCommands[1].draw();
}