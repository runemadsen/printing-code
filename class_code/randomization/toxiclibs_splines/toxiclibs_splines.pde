import toxi.geom.*;

void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  noFill();
  stroke(255);
  strokeWeight(3);

  int pointNum = 5;
  int pointWidth = width / pointNum;
  ArrayList<Vec2D> points = new ArrayList();

  // first create the random points
  for (int i = 0; i < pointNum + 1; i++)
  {
    float x = i * pointWidth;
    float y = (height/2) + random(-300, 300);
    Vec2D p = new Vec2D(x, y);
    points.add(p);
  }

  /*
  // then draw them on the screen
  beginShape();
  for (int i = 0; i < points.size(); i++)
  {
    Vec2D p = points.get(i);
    vertex(p.x, p.y);
    ellipse(p.x, p.y, 5, 5);
  }
  endShape();
  */

  /*
  Spline2D spline = new Spline2D(points);
  ArrayList<Vec2D> morePoints = (ArrayList) spline.computeVertices(3); // split each point into 2 (distance based on curve)
  //ArrayList<Vec2D> morePoints = (ArrayList) spline.computeVertices(10); // split each point into 30 (distance based on curve)
  //ArrayList<Vec2D> morePoints = (ArrayList) spline.getDecimatedVertices(20, false); // create points from the outline with 20 pixels distance
  
  beginShape();
  for(int i = 0; i < morePoints.size(); i++) 
  {
    Vec2D p = morePoints.get(i);
    vertex(p.x, p.y);
    ellipse(p.x, p.y, 5, 5);
  }
  endShape();
  */

  /*
  Spline2D spline = new Spline2D(points);
  ArrayList<Vec2D> morePoints = (ArrayList) spline.getDecimatedVertices(20, false);
  beginShape();
  for(int i = 0; i < morePoints.size(); i++) 
  {
    Vec2D p = morePoints.get(i);
    vertex(p.x + random(5), p.y + random(5));
  }
  endShape();
  */

  saveFrame("toxiclibs_splines_5.jpg");
}