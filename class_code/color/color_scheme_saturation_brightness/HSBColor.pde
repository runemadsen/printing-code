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
    println("creating: " + h + " " + s + " " + b);
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
}
