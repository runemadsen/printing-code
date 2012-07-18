// Parts of this example has been adapted from P_2_2_3_02_TABLET
// from http://www.generative-gestaltung.de
//import generativedesign.*;

int circleResolution = 15;
float circleRadius = 150;
float displaceAmount = 2;
float circleX, circleY;
float[] x = new float[circleResolution];
float[] y = new float[circleResolution];

void setup(){
  
  size(1200, 800);
  smooth();

  // init form
  circleX = width/2; 
  circleY = height/2;
  float angle = radians(360/float(circleResolution));
  for (int i=0; i<circleResolution; i++){
    x[i] = cos(angle*i) * circleRadius;
    y[i] = sin(angle*i) * circleRadius;  
  }

  stroke(0, 50);
  background(255);
}

void draw()
{
  // floating towards mouse position
  circleX += (mouseX-circleX) * 0.01;
  circleY += (mouseY-circleY) * 0.01;

  // calculate new points
  for (int i=0; i<circleResolution; i++){
    x[i] += random(-displaceAmount,displaceAmount);
    y[i] += random(-displaceAmount,displaceAmount);
  }

  strokeWeight(0.75);
  noFill();

  beginShape();
  
  // we need a start vertex point
  curveVertex(x[circleResolution-1]+circleX, y[circleResolution-1]+circleY);

  // then draw all the points
  for (int i=0; i<circleResolution; i++){
    curveVertex(x[i]+circleX, y[i]+circleY);
  }
  
  // and two end points (the last is the control point)
  curveVertex(x[0]+circleX, y[0]+circleY);
  curveVertex(x[1]+circleX, y[1]+circleY);
  
  endShape();
}


void mousePressed() 
{
  circleX = mouseX; 
  circleY = mouseY;

  float angle = radians(360/float(circleResolution));
  float radius = circleRadius * random(0.5,1.0);
  for (int i=0; i<circleResolution; i++){
    x[i] = cos(angle*i) * radius;
    y[i] = sin(angle*i) * radius;
  }
}





























