void setup()
{
  size(1280, 800);
  background(255);
  noStroke();
  colorMode(HSB, 360, 100, 100);
  
  int numRects = 30;
  
  // THIS IS WRONG!!!!
  // let's say we want to divide the width of the screen into 30 small rectangles
  // with a random color. Because "width" is an int it will always round down to 
  // the closest non-decimal number. 1280 / 30 is 42.6666, which means that each 
  // rectangle should really be 42.7 in width. But because "width" is an int, that
  // division will round down to 42. This means that we will loose 21 pixels (0.7*30)
  
  translate(0, 75);
  float rectWidth1 = width / numRects;
  
  for(int i = 0; i < numRects; i++)
  {
    fill(120, random(20, 80), random(20, 80));
    rect(i * rectWidth1, 0, rectWidth1, 300);
  }
  
  // THIS IS RIGHT!!!!
  // It's right because we cast the integer variables into floats before the division
  translate(0, 350);
  float rectWidth2 = (float) width / (float) numRects;
  
  for(int i = 0; i < numRects; i++)
  {
    fill(120, random(20, 80), random(20, 80));
    rect((float) i * rectWidth2, 0, rectWidth2, 300);
  }
}
