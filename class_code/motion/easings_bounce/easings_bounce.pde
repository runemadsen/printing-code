import de.looksgood.ani.*;

float x;
float y;
int diameter = 100;

void setup() 
{
  size(1280, 800);
  smooth();
  noStroke();
  Ani.init(this);

  startEasing();
}

void draw() 
{
  background(30);
  fill(40, 100, 170);
  ellipse(x, y, diameter, diameter);
}

void startEasing()
{
  x = width / 2;
  y = 200;
  Ani.to(this, 2, "y", height-(diameter/2), Ani.BOUNCE_OUT, "onEnd:startEasing");
}
