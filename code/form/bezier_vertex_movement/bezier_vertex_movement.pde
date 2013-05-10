PVector vertexAnchor;
PVector bezierControlPoint1;
PVector bezierControlPoint2;
PVector bezierAnchor;

void setup()
{
  size(400, 250);
  smooth();
  frameRate(24);
  
  // placement of first vertex point
  vertexAnchor = new PVector(100, 175);
  bezierAnchor = new PVector(300, 175);
  bezierControlPoint1 = new PVector(70, 70);
  bezierControlPoint2 = new PVector(250, 70);
}

void draw()
{
  background(255);
  
  int percent = frameCount % 100;
  
  // draw bezier line
  strokeWeight(2);
  stroke(0);
  noFill();
  beginShape();
  vertex(vertexAnchor.x, vertexAnchor.y);
  bezierVertex(bezierControlPoint1.x, bezierControlPoint1.y, bezierControlPoint2.x, bezierControlPoint2.y, bezierAnchor.x, bezierAnchor.y);
  endShape();
  
  // draw red anchor points
  noStroke();
  fill(255, 0, 0);
  ellipse(vertexAnchor.x, vertexAnchor.y, 7, 7);
  ellipse(bezierAnchor.x, bezierAnchor.y, 7, 7);
  
  // draw bezier control points
  noStroke();
  fill(0, 0, 255);
  ellipse(bezierControlPoint1.x, bezierControlPoint1.y, 6, 6);
  ellipse(bezierControlPoint2.x, bezierControlPoint2.y, 6, 6);
  
  // draw grey lines between all points
  stroke(200);
  strokeWeight(1);
  line(vertexAnchor.x, vertexAnchor.y, bezierControlPoint1.x, bezierControlPoint1.y);
  line(bezierControlPoint1.x, bezierControlPoint1.y, bezierControlPoint2.x, bezierControlPoint2.y);
  line(bezierControlPoint2.x, bezierControlPoint2.y, bezierAnchor.x, bezierAnchor.y);
  
  // draw dots in between
  PVector pointBetween1 = drawDotBetween(vertexAnchor, bezierControlPoint1, percent, color(0, 255, 0));
  PVector pointBetween2 = drawDotBetween(bezierControlPoint1, bezierControlPoint2, percent, color(0, 255, 0));
  PVector pointBetween3 = drawDotBetween(bezierControlPoint2, bezierAnchor, percent, color(0, 255, 0));
  
  PVector pointBetween4 = drawDotBetween(pointBetween1, pointBetween2, percent, color(0, 255, 0));
  PVector pointBetween5 = drawDotBetween(pointBetween2, pointBetween3, percent, color(0, 255, 0));
  
  PVector pointBetween6 = drawDotBetween(pointBetween4, pointBetween5, percent, color(255, 0, 0));
}

PVector drawDotBetween(PVector start, PVector stop, int percent, color c)
{
  // draw line
  stroke(200);
  strokeWeight(1);
  line(start.x, start.y, stop.x, stop.y);
  
  // draw dot
  pushMatrix();
  translate(start.x, start.y);
  PVector pointBetween = getPointOnLine(start, stop, percent);
  noStroke();
  fill(c);
  ellipse(pointBetween.x, pointBetween.y, 6, 6);
  popMatrix();
  
  pointBetween.add(start);
  return pointBetween;
}

PVector getPointOnLine(PVector start, PVector stop, int percent)
{
  PVector result = PVector.sub(stop, start); // find relative distance
  result.div(100); // normalize vector to just the direction
  result.mult(percent); // multiply by percent
  return result;
}
