void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  HSBColor color1 = new HSBColor(41, 100, 100);
  HSBColor color2 = new HSBColor(41, 50, 90);
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(240, 200);
  color1.display(0, 0, rectSize, rectSize);
  color2.display(rectSize, 0, rectSize, rectSize);
}
