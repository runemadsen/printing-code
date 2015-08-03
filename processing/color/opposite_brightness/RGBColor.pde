class RGBColor
{
  int r;
  int g;
  int b;
  
  RGBColor(int _r, int _g, int _b)
  {
    r = _r;
    g = _g;
    b = _b; 
  }
  
  float getPerceivedBrightness()
  {
    return sqrt(r * r * .241 + g * g * .691 + b * b * .068);
  }
}
