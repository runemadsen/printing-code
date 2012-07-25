void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  // first pick base color
  HSBColor color1 = new HSBColor(0, 100, 100);
  
  // then find colors on each side of this color by adding/subtracting
  // a specific number of degrees on the hue scale. I use 30 here, as the
  // standard color wheel has 12 colors, and 360/12 is 30.
  int leftHue = (color1.h + 330) % 360;
  int rightHue = (color1.h + 30) % 360;
  
  HSBColor color2 = new HSBColor(leftHue, 100, 100);
  HSBColor color3 = new HSBColor(rightHue, 100, 100);
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(40, 200);
  color2.display(0, 0, rectSize, rectSize);
  color1.display(rectSize, 0, rectSize, rectSize);
  color3.display(rectSize*2, 0, rectSize, rectSize);
}
