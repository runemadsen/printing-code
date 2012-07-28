void setup()
{
  size(960, 1280);
  colorMode(HSB, 360, 100, 100);
  background(360);
  noStroke();
  smooth();
  
  int rectWidth = 250;
  int rectHeight = 170;
  int spacing = 20;
  
  int xPos = 200;
  int yPos = 80;
  
  int[][] colors = {
    {351, 65, 35, 213, 58, 38},
    {218, 65, 35, 350, 43, 45},
    {5, 75, 49, 205, 58, 53},
    {215, 78, 38, 5, 75, 49},
    {346, 62, 64, 172, 28, 52},
    {204, 31, 73, 8, 40, 78}
  };
  
  for(int i = 0; i < colors.length; i++)
  {
    fill(colors[i][0], colors[i][1], colors[i][2]);
    rect(xPos, yPos, rectWidth, rectHeight);
    fill(colors[i][3], colors[i][4], colors[i][5]);
    rect(xPos + rectWidth, yPos, rectWidth, rectHeight);
  
    yPos += rectHeight + spacing;
    xPos = 200 + round(random(30));
  }
}
