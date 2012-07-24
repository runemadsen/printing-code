void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  // first we pick a base color
  HSBColor color1 = new HSBColor(0, 100, 100);
  
  // then we pick two colors with different brightness
  int diff = 30;
  HSBColor color2 = new HSBColor(color1.h, color1.s, color1.b - diff);
  HSBColor color3 = new HSBColor(color2.h, color2.s, color2.b - diff);
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(40, 200);
  color1.display(0, 0, rectSize, rectSize);
  color2.display(rectSize, 0, rectSize, rectSize);
  color3.display(rectSize*2, 0, rectSize, rectSize);
}
