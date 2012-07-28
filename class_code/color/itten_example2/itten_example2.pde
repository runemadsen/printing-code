void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  noStroke();
  smooth();
  
  fill(0);
  rect(0, 0, width/2, height);
  
  int rectSize = round(width * 0.10);
  
  fill(0, 0, 20);
  rect((width * 0.25) - (rectSize/2), (height / 2) - (rectSize / 2), rectSize, rectSize * 1.2);
  
  fill(0, 0, 63);
  rect((width * 0.75) - (rectSize/2), (height / 2) - (rectSize / 2), rectSize, rectSize * 1.2);
}
