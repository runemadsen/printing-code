void setup()
{
  size(1280, 800);
  smooth();
  colorMode(HSB, 360, 100, 100);
  background(360);
  noStroke();

  drawCircle(width / 2, height / 2, 700);
}

void drawCircle(int x, int y, int siz)
{
  pushMatrix();
  translate(x, y);
  fill(0, random(100), random(100));
  ellipse(0, 0, siz, siz);
  popMatrix();

  // call the function again. We need an if statement, 
  // otherwise it goes on forever
  //if(siz > 10)
  //{
    drawCircle(x, y, siz - round(random(20)));  
  //}
}
