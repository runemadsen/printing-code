void setup()
{
  size(1200, 800);
  
  int siz = 250;
  
  background(255);
  fill(0);
  noStroke();
  
  translate(width/2, (height/2) - (siz*0.30));
  triangle(-(siz/2), 0, siz/2, 0, 0, siz*1.4);
  ellipse(0, -(siz*0.2), siz, siz);
  fill(255);
  rect(-(siz/2), -(siz*0.04), siz, siz*0.04);
}
