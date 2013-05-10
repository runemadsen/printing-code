/* Variables 
 --------------------------------------------------------- */

int maxCircles = 300;
float radius = 10; // radius of the circles
float expansion = 15; // distance between circles
float spiral_type = 1.0; // controls the spinning of the shape

void setup() 
{ 
  size(1280, 800);
  background(30);
  smooth();

  translate(width / 2, height / 2);
  drawSunFlower();
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
    fill(255);
    ellipse(cx, cy, radius*2, radius*2);
  }
}

