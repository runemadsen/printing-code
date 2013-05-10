import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

float   SWATCH_HEIGHT = 40;
float   SWATCH_WIDTH = 5;
int     SWATCH_GAP = 1;

float   MAX_SIZE = 150;
int     NUM_DISCS = 300;

boolean showDiscs=true;

void setup() 
{
  size(1280, 800);
  background(255);
  colorMode(HSB, 1, 1, 1);
  textFont(createFont("arial", 16));
  noStroke();
  smooth();
  
  translate(50, 40);
  
  // first we find our base random color
  TColor col = ColorRange.DARK.getColor();
  
  // then get a list of all the different color scheme strategies (complementary, tetrad, etc)
  ArrayList strategies = ColorTheoryRegistry.getRegisteredStrategies();
  
  // loop through all strategies
  for (Iterator i=strategies.iterator(); i.hasNext();) 
  {
    // get the strategy
    ColorTheoryStrategy s = (ColorTheoryStrategy) i.next();
    
    // get a color list with colors for this strategy and the specific color
    ColorList colors = ColorList.createUsingStrategy(s, col);
    
    // draw the theme
    fill(0);
    text(s.getName(), 0, 0);
    
    translate(0, 10);
    
    int themeRectSize = 45;
    int xPos = 0;
    for (Iterator j = colors.iterator(); j.hasNext();) 
    {
      TColor c = (TColor) j.next();
      fill(c.hue(), c.saturation(), c.brightness());
      rect(xPos, 0, themeRectSize, themeRectSize);
      xPos += themeRectSize;
    }
    
    // just to show that it's possible, let find 100 colors within this theme
    ColorList moreColors = new ColorRange(colors).addBrightnessRange(0,1).getColors(null, 50, 0.05);
    moreColors.sortByDistance(false);
    
    xPos = 350;
    int moreEllipseSize = 30;
    for (Iterator j = moreColors.iterator(); j.hasNext();) 
    {
      TColor c = (TColor) j.next();
      fill(c.hue(), c.saturation(), c.brightness());
      ellipse(xPos, 20, moreEllipseSize, moreEllipseSize);
      xPos += moreEllipseSize / 2;
    }
    
    translate(0, themeRectSize + 20);
  }
}

