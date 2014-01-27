int circleResolution = 15;
float circleRadius = 150;
float displaceAmount = 2;
float[] x = new float[circleResolution];
float[] y = new float[circleResolution];

void setup(){
  
  size(1200, 800);
  smooth();

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
  // calculate new points
  for (int i=0; i<circleResolution; i++){
    x[i] += random(-displaceAmount,displaceAmount);
    y[i] += random(-displaceAmount,displaceAmount);
  }

  strokeWeight(0.75);
  noFill();
  
  translate(mouseX, mouseY);

  beginShape();
  
  // we need a start vertex point
  curveVertex(x[circleResolution-1], y[circleResolution-1]);

  // then draw all the points
  for (int i=0; i<circleResolution; i++){
    curveVertex(x[i], y[i]);
  }
  
  // and two end points (the last is the control point)
  curveVertex(x[0], y[0]);
  curveVertex(x[1], y[1]);
  
  endShape();
}
