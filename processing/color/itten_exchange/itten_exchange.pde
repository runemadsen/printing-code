void setup()
{
  size(960, 1280);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  noStroke();
  smooth();
  
  fill(330, 54, 36);
  rect(0, 0, width, height/2);
  
  fill(23, 66, 31);
  rect(0, height / 2, width, height / 2);
  
  int rectSize = round(width * 0.13);
  
  fill(0, 46, 34);
  rect((width / 2) - (rectSize/2), (height * 0.25) - (rectSize / 2), rectSize, rectSize);
  rect((width / 2) - (rectSize/2), (height * 0.75) - (rectSize / 2), rectSize, rectSize);
}
