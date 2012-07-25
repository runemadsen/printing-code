void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  // first pick base color
  HSBColor color1 = new HSBColor(0, 60, 60);
  
  // then pick opposite color with smart little trick
  int complimentaryHue = (color1.h + 180) % 360;
  HSBColor color2 = new HSBColor(complimentaryHue, color1.s, color1.b);
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(240, 200);
  color1.display(0, 0, rectSize, rectSize);
  color2.display(rectSize, 0, rectSize, rectSize);
}
