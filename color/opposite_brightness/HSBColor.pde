// This is a simple class I made that holds the values of an HSB color
class HSBColor
{
  int h;
  int s;
  int b;
  
  HSBColor()
  {
    h = round(random(360));
    s = round(random(100));
    b = round(random(100)); 
  }
  
  HSBColor(int _h, int _s, int _b)
  {
    h = _h;
    s = _s;
    b = _b; 
  }
  
  HSBColor(float _h, float _s, float _b)
  {
    h = round(_h);
    s = round(_s);
    b = round(_b);
  }
  
  void display(int x, int y, int wi, int he)
  {
    noStroke();
    fill(h, s, b);
    rect(x, y, wi, he); 
  }
  
  // function to convert HSB values into RGB via bitshifting
  RGBColor getRGB()
  {
    int colorHex = Color.HSBtoRGB((float) h / 360, (float) s / 100, (float) b / 100);
    int aCol = (colorHex >> 24) & 0xFF;
    int rCol = (colorHex >> 16) & 0xFF;  // Faster way of getting red(argb)
    int gCol = (colorHex >> 8) & 0xFF;   // Faster way of getting green(argb)
    int bCol = colorHex & 0xFF;          // Faster way of getting blue(argb)
    return new RGBColor(rCol, gCol, bCol);
  }
}
