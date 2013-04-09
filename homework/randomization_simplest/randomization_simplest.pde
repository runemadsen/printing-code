import geomerative.*;

void setup()
{
  size(800, 800);
  RG.init(this);
  background(255);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1, 1);
  
  /* Create lines 
  ------------------------------------------------------------ */
  
  ArrayList<RPoint> linePoints = new ArrayList<RPoint>();

  float xPos = 0;
  float yPos = 0;

  while(xPos < 1000)
  {
    // add point on line
    linePoints.add( new RPoint(xPos, yPos) );

    // add to the positions so they update for next run
    xPos += random(60, 150);
    yPos =  noise(xPos / 150) * 100;
  }
  
  /* Draw shapes
  ------------------------------------------------------------ */
  
  translate(0, 500);

  // loop through each point
  for(int i = 0; i < linePoints.size() - 1; i++)
  {
    // first find a random height for this rectangle
    float ranHeight = random(150, 350);

    // then find all the points we need for this rectangle
    RPoint bottomLeft  = linePoints.get(i);
    RPoint bottomRight = linePoints.get(i + 1);

    // and calculcate the top points from this
    RPoint topLeft = new RPoint(bottomLeft);
    topLeft.sub(new RPoint(0, ranHeight));

    RPoint topRight = new RPoint(bottomRight);
    topRight.sub(new RPoint(0, ranHeight));

    // now draw the triangles to make the real rectangles
    noStroke();
    fill(0, 0, 0, 0.4);
    triangle(bottomLeft.x, bottomLeft.y, topLeft.x, topLeft.y, topRight.x, topRight.y);
    
    fill(0, 0, 0, 0.8);
    triangle(topLeft.x, topLeft.y, topRight.x, topRight.y, bottomRight.x, bottomRight.y);

    // aaaand the line
    strokeWeight(2);
    stroke(0, 0, 0.5);
    line(bottomLeft.x, bottomLeft.y, bottomRight.x, bottomRight.y);
  }
}