import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(255);
  colorMode(HSB, 1, 1, 1);
  noStroke();
  smooth();

  translate(50, 40);

  // to create colors from a color theory, first you must pick a base color
  TColor col = TColor.newHSV(0 / 360, 50 / 100, 26 / 100);

  /* 
    Then you need to pick a strategy. These are the strategies you can use.
    You should recognize most of them:

    AnalogousStrategy
    ComplementaryStrategy
    CompoundTheoryStrategy
    LeftSplitComplementaryStrategy
    MonochromeTheoryStrategy
    RightSplitComplementaryStrategy
    SingleComplementStrategy
    SplitComplementaryStrategy
    TetradTheoryStrategy
    TriadTheoryStrategy
   */
  ColorTheoryStrategy s = new MonochromeTheoryStrategy();

  // now get a list of colors from the base color and this strategy
  // this will only be a small list of colors (3 for analogous, etc)
  ColorList colors = ColorList.createUsingStrategy(s, col);

  // if you want to, you can create a lot more colors from this colorlist
  // here we're creating 50 colors by using a new ColorRange
  ColorList moreColors = new ColorRange(colors).getColors(null, 50, 0.05);

  // draw the 50 colors randomly on the screen
  for (Iterator j = moreColors.iterator(); j.hasNext();)
  {
    TColor c = (TColor) j.next();
    fill(c.hue(), c.saturation(), c.brightness());
    ellipse(random(width), random(height), 50, 50);
  }
}