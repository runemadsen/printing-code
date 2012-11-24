import toxi.util.datatypes.*;

Snapper snapper;
int maxCircles = 300;
float radius = 10; // radius of the circles
float expansion = 15; // distance between circles
float spiral_type = 1.0; // controls the spinning of the shape
float bgHue = 0;

void setup()
{
  size(1280, 800);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1);

  snapper = new Snapper(1000, 20000);
}

void draw()
{
  background(bgHue, 0.4, 0.4);
  translate(width / 2, height / 2);
  drawSunFlower();
  snapper.tick();

  bgHue += 0.001;
  if(bgHue > 1) bgHue = 0;
}

void drawSunFlower()
{
  float phi = (1+sqrt(5.0))/2.0;
  float increment = 2*PI*phi + (2*PI/spiral_type);

  for (int i = 1; i < maxCircles; i++) 
  {
    float distance = sqrt(i)*expansion;
    float angle = i * increment;
    
    float cx = distance*cos(angle);
    float cy = distance*sin(angle);
    
    noStroke();
    fill(0, 0, 1);
    ellipse(cx, cy, radius*2, radius*2);
  }

  spiral_type += 0.000005;
}
