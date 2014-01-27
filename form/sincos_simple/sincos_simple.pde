void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noStroke();
  
  translate(360, 240);
  
  // draw the center point
  fill(255, 0, 0);
  ellipse(0, 0, 30, 30);
  
  // now find the x,y of the new point that is 300px and 33 degrees away from the center point
  // notice how we need to convert our degrees to radians with the radians() function
  float x = cos(radians(33)) * 450;
  float y = sin(radians(33)) * 450;
  
  fill(0, 0, 255);
  ellipse(x, y, 30, 30);
}
