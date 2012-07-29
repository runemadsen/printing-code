void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  
  float blueValue = 4;
  HSBColor colorBlue = new HSBColor(240, 100, 100);
  
  float orangeValue = 8;
  HSBColor colorOrange = new HSBColor(30, 100, 100);
  
  float violetValue = 3;
  HSBColor colorViolet = new HSBColor(300, 100, 100);
  
  float yellowValue = 9;
  HSBColor colorYellow = new HSBColor(60, 100, 100);
  
  int rectHeight = 200;
  
  float fullWidth = 800;
  translate(240, 100);
  
  // find size of blue. Blue is half the volume of orange (0.5), and must therefore
  // be twice as big. We get that by dividing fullwidth by 1.5 (500 / 1.5 = 333)
  float blueRatio = 1 + (blueValue / orangeValue); // yields 1.5
  float blueWidth = fullWidth / blueRatio;
  
  colorBlue.display(0, 0, blueWidth, rectHeight);
  colorOrange.display(blueWidth, 0, fullWidth - blueWidth, rectHeight);
  
  translate(0, 300);
  
  // find size of violet. Violet is 1/3 the volume of orange (0.333), and must therefore
  // be three times as big.
  float violetRatio = 1 + (violetValue / yellowValue);
  float violetWidth = fullWidth / violetRatio;
  
  colorViolet.display(0, 0, violetWidth, rectHeight);
  colorYellow.display(violetWidth, 0, fullWidth - violetWidth, rectHeight);
}
