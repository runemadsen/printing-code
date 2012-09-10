/* Variables 
--------------------------------------------------------- */

int maxCircles = 300;
float slope = 0.0; // if less than 0, circles get smaller to the edge. If greater than 0, they get bigger
float expansion = 15; // distance between circles
float r_min = 10.0; // smallest radius for circles
float r_max = 10.0; // biggest radis for circles
float spiral_type = 1.0; // controls the spinning algorithm

void setup() 
{ 
  size(1280, 800);
  background(255);
  smooth();
  
  translate(width / 2, height / 2);
  drawSunFlower();
}

void drawSunFlower()
{
  float phi = (1+sqrt(5.0))/2.0;
  float increment = 2*PI*phi + (2*PI/spiral_type);
  float d_min = 1.0;
  float d_max = sqrt(maxCircles)*expansion;
  float r_avg = (r_min + r_max)/2.0;
  float d_avg = (d_min + d_max)/2.0;
  
  for(int i = 1; i < maxCircles; i++) 
  {
    float distance = sqrt(i)*expansion;
    float result_radius = r_avg + slope*(distance-d_avg)/(d_max-d_avg)*(r_max-r_avg);
    drawCircle(distance, (increment*i), result_radius, r_max, i);
  }
}

void drawCircle(float distance, float angle, float radius, float rmax, int i)
{
  float cx = distance*cos(angle);
  float cy = distance*sin(angle);

  noStroke();
  fill(0);

  pushMatrix();
  translate(cx, cy);
  ellipse(0, 0, radius*2, radius*2);
  popMatrix();
}

