void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  // first pick base color
  HSBColor color1 = new HSBColor(240, 100, 100);
  
  // then find colors on each side of this color by adding/subtracting
  // a specific number of degrees on the hue scale.
  int deg = 50;
  
  HSBColor color2 = new HSBColor(color1.h - deg, color1.s - 70, color1.b);
  HSBColor color3 = new HSBColor(color1.h + deg, color1.s - 70, color1.b);
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(40, 200);
  color2.display(0, 0, rectSize, rectSize);
  color1.display(rectSize, 0, rectSize, rectSize);
  color3.display(rectSize*2, 0, rectSize, rectSize);
}
