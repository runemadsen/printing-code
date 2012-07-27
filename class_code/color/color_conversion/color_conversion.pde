void setup()
{
  size(500, 500);
  noStroke();
  background(255);
  
  Kolor c = new Kolor();
  
  println( "Yellow in RGB is:" );
  c.RYBtoRGB(0, 255, 0);
  println("red: " + c.r + ", green: " + c.g + ", blue: " + c.b);
  
  println( "Green in RYB is:" );
  c.RGBtoRYB(0, 255, 0);
  println("red: " + c.r + ", yellow: " + c.y + ", blue: " + c.b);
}
