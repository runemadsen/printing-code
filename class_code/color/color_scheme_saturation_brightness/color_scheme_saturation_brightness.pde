void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  // pick 3 random colors of red
  HSBColor color1 = new HSBColor(0, random(100), random(100));
  HSBColor color2 = new HSBColor(0, random(100), random(100));
  HSBColor color3 = new HSBColor(0, random(100), random(100));
  
  // then we draw them on the screen
  int rectSize = 400;
  translate(40, 200);
  color1.display(0, 0, rectSize, rectSize);
  color2.display(rectSize, 0, rectSize, rectSize);
  color3.display(rectSize*2, 0, rectSize, rectSize);
}
