/*  Imports
 _________________________________________________________________ */

import toxi.geom.*;

/*  Properties
 _________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3500;
int canvas_height = 3000;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

ArrayList<Vec2D> linePoints = new ArrayList();

/*  Setup
 _________________________________________________________________ */

void setup()
{ 
  size(1300, 850);
  background(30);

  canvas = createGraphics(canvas_width, canvas_height);

  calculateResizeRatio();

  canvas.beginDraw();
  canvas.colorMode(HSB, 1, 1, 1);
  canvas.background(0.1, 0, 1);

  createLinePoints();
  drawLinePoints();

  canvas.endDraw();

  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;

  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);

  //canvas.save("grab.png");
}

/*  Create the line
 _________________________________________________________________ */

void createLinePoints()
{
  float noiseCount = 0;
  int steps = 30;

  for (int i = 0; i < canvas.width; i += steps)
  {
    float lineX = i;
    float lineY = noise(noiseCount) * 300;
    linePoints.add(new Vec2D(lineX, lineY));
    
    noiseCount += 0.01;
  }
}

/*  Draw the line
 _________________________________________________________________ */

void drawLinePoints()
{
  canvas.translate(0, canvas.height * 0.6);
  canvas.stroke(0, 0, 0.4);
  canvas.strokeWeight(5);
  canvas.beginShape();
  for(int i = 0; i < linePoints.size(); i++)
  {
    canvas.vertex(linePoints.get(i).x, linePoints.get(i).y); 
  }
  canvas.endShape();
}

/*  Calculate resizing
 _________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;

  if (ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

