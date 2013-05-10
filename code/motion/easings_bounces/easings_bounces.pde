import de.looksgood.ani.*;

ArrayList<Ball> balls = new ArrayList();

void setup() 
{
  size(1280, 800);
  smooth();
  noStroke();
  Ani.init(this);

  int howManyBalls = int(random(10, 40));

  for(int i = 0; i < howManyBalls; i++)
  {
    Ball b = new Ball( random(width), 0, random(50, 100), random(1,3));
    balls.add(b);
  }
}

void draw() 
{
  background(30);

  for(int i = 0; i < balls.size(); i++)
  {
    balls.get(i).display();
  }
}
