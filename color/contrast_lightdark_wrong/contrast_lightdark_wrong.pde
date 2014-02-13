void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  noStroke();
  
  int rectWidth = 100;
  int rectHeight = 400;
  
  float start = 10;
  float stop = 90;
  
  translate(100, 200);
  
  for(int i = 0; i < 10; i++)
  {
    fill(0, 0, i * 10);
    rect(i * rectWidth, 0, rectWidth, rectHeight);
  }
}
