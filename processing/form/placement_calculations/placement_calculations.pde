int rectSize = 50;
int circleSize = 120;

void setup()
{
  size(600, 600);
  smooth();
  background(255);
  noStroke();
  fill(40);
  
  // draw a rectangle in the left corner
  rect(0, 0, rectSize, rectSize);
  
  // draw a rectangle in the right corner
  rect(width - rectSize, 0, rectSize, rectSize);
  
  // draw a rectangle in the center
  rect(width / 2 - rectSize / 2, 0, rectSize, rectSize);
  
  // draw a rectangle at the golden ratio x
  float golden = (1 + sqrt(5)) / 2;
  rect(width / golden, 0, rectSize, rectSize);
  
  // draw an ellipse in the center of screen
  fill(0, 0, 255);
  ellipse(width / 2, height / 2, circleSize, circleSize);
  
  // draw an ellipse on the edge of the other ellipse, on 45 degrees
  fill(255, 0, 0);
  translate(width / 2, height / 2);
  float x = cos(radians(45)) * (circleSize / 2);
  float y = sin(radians(45)) * (circleSize / 2);
  ellipse(x, y, 20, 20);
  
}
