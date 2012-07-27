int numColors = 12;
int wheelDiameter = 600;
float colorSpacing = 1;
int wheelThickness = 120;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  strokeWeight(wheelThickness);
  noFill();
  smooth();
  strokeCap(SQUARE);
  
  int colorAngle = 360 / numColors;
  
  translate(width / 2, height / 2);
  
  for(int i = 0; i < numColors; i++)
  {
    float startAngle = i * colorAngle + colorSpacing;
    float stopAngle = (i + 1) * colorAngle - colorSpacing;
    
    stroke(startAngle, 90, 75);
    arc(0, 0, wheelDiameter, wheelDiameter, radians(startAngle), radians(stopAngle));
  }
   
}
