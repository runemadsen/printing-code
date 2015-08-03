import geomerative.*;

void setup() 
{
  size(1280, 800); 
  smooth();
  fill(83, 142, 35);
  noStroke();

  RG.init(this);

  int shapeSize = 200;

  // draw a normal ellipse
  ellipse(200, 200, shapeSize, shapeSize);

  // make an RShape with an ellipse
  RShape ellipze = RShape.createEllipse(200, 500, shapeSize, shapeSize);
  ellipze.draw();

  // draw a normal rectangle
  rect(500, 200, shapeSize, shapeSize);

  // make an RShape with an ellipse
  RShape rectz = RShape.createRectangle(500, 500, shapeSize, shapeSize);
  rectz.draw();


  // draw a normal star - oh wait that's super hard in Processing
  // ??????

  // make an RShape with a star
  RShape ztar = RShape.createStar(1000, 300, shapeSize*2, shapeSize, 8);
  ztar.draw();
}