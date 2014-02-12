import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  colorMode(HSB, 1, 1, 1);
  background(1);
  
  float blueValue = 4;
  TColor colorBlue = TColor.newHSV(240f/360f, 1, 1);
  
  float orangeValue = 8;
  TColor colorOrange = TColor.newHSV(30f/360f, 1, 1);
  
  float violetValue = 3;
  TColor colorViolet = TColor.newHSV(300f/360f, 1, 1);
  
  float yellowValue = 9;
  TColor colorYellow = TColor.newHSV(60f/360f, 1, 1);
  
  int rectHeight = 200;
  
  float fullWidth = 800;
  translate(240, 100);
  
  // find size of blue. Blue is half the volume of orange (0.5), and must therefore
  // be twice as big. We get that by dividing fullwidth by 1.5 (500 / 1.5 = 333)
  float blueRatio = 1 + (blueValue / orangeValue); // yields 1.5
  float blueWidth = fullWidth / blueRatio;
  
  noStroke();

  fill(colorBlue.hue(), colorBlue.saturation(), colorBlue.brightness());
  rect(0, 0, blueWidth, rectHeight);

  fill(colorOrange.hue(), colorOrange.saturation(), colorOrange.brightness());
  rect(blueWidth, 0, fullWidth - blueWidth, rectHeight);
  
  translate(0, 300);
  
  // find size of violet. Violet is 1/3 the volume of orange (0.333), and must therefore
  // be three times as big.
  float violetRatio = 1 + (violetValue / yellowValue);
  float violetWidth = fullWidth / violetRatio;

  fill(colorViolet.hue(), colorViolet.saturation(), colorViolet.brightness());
  rect(0, 0, violetWidth, rectHeight);
  
  fill(colorYellow.hue(), colorYellow.saturation(), colorYellow.brightness());
  rect(violetWidth, 0, fullWidth - violetWidth, rectHeight);
}
