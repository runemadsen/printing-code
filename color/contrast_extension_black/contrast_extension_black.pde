void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(0);
 
  HSBColor color1 = new HSBColor(50, 100, 100);
  HSBColor color2 = new HSBColor(300, 60, 30);
  
  // then we draw them on the screen
  int rectSize = 250;
  translate(240, 280);
  color1.display(0, 0, rectSize, rectSize);
  color2.display(rectSize * 2, 0, rectSize, rectSize);
}
