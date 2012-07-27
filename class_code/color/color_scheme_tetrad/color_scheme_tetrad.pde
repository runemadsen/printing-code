void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  // first pick base color
  HSBColor color1 = new HSBColor(0, 100, 100);
  
  // find the rectangle of complementary colors by going 90 degrees around the color wheel
  int rightHue = (color1.h + 90) % 360;
  int bottomHue = (color1.h + 180) % 360;
  int leftHue = (color1.h + 270) % 360;
  
  HSBColor color2 = new HSBColor(rightHue, 100, 100);
  HSBColor color3 = new HSBColor(bottomHue, 100, 100);
  HSBColor color4 = new HSBColor(leftHue, 100, 100);
  
  // then we draw them on the screen
  int rectSize = 300;
  translate(40, 230);
  color1.display(0, 0, rectSize, rectSize);
  color2.display(rectSize, 0, rectSize, rectSize);
  color3.display(rectSize*2, 0, rectSize, rectSize);
  color4.display(rectSize*3, 0, rectSize, rectSize);
}
