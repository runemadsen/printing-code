void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();

  int rectSize = 250;

  translate(width/2, height/2);
  rectMode(CENTER);

  // first we try to draw something in the normal colormode.
  // Processing expects values from 0-255 in RGB format, so we give it to it
  
  fill(0, 255, 0);  // this is green!
  rect(-(rectSize*1.1), 0, rectSize, rectSize);  

  // now we change the colormode to tell Processing to expect values from 0-1
  
  colorMode(RGB, 1, 1, 1);
  fill(0, 1, 0);    // this is also green!
  rect(0, 0, rectSize, rectSize);

  // now we change the colormode to HSB
  
  colorMode(HSB, 1, 1, 1);
  fill(0.3333, 1, 1);  // this is also green! Green is 120 degrees on the hue wheel. 120 / 360 is 0.3333. 
  rect(rectSize*1.1, 0, rectSize, rectSize);
}
