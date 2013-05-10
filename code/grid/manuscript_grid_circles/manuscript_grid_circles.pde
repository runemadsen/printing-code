void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  Column col = new Column(50, 50, width-100, height-100);
  
  noFill();
  strokeWeight(3);
  stroke(0, 114, 188);
  rect(col.x, col.y, col.w, col.h);

  ellipseMode(CORNER);
  noStroke();
  int ellipseSize = 40;
  int[] colors = {#70b65c, #ea5949, #1394d2};

  for(int i = 0; i < 100; i++)
  {
    int c = colors[int(random(colors.length))];
    fill(c);
    float x = random(col.x, col.x + col.w - ellipseSize);
    float y = random(col.y, col.y + col.h - ellipseSize);
    ellipse(x, y, ellipseSize, ellipseSize);
  }
}
