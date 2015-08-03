import geomerative.*;

RShape circle;
RShape rectangle;

void setup() 
{
  size(1280, 800); 
  smooth();
  
  noStroke();

  RG.init(this);

  int shapeSize = 200;
  circle = RShape.createEllipse(0, 0, shapeSize, shapeSize);
  rectangle = RShape.createRectangle(600, 400, shapeSize, shapeSize);
}

void draw()
{
  background(255);

  // all geomerative shapes have a translate function. However, it will not reset the shape location to the 
  // passed in x,y, but add the x,y on top of the location. So we much subtract the shapes location to the desired
  // translation point.
  fill(255, 0, 0);
  circle.translate(mouseX - circle.getX(), mouseY - circle.getY());
  circle.draw();

  if(circle.intersects(rectangle))
  {
    fill(0, 255, 0);
  }
  else
  {
    fill(255, 0, 0);  
  }

  rectangle.draw();
}