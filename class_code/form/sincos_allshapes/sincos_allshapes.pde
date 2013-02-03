void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noStroke();
  
  // draw triangle
  drawShape(3, width * 0.25, height * 0.25);

  // draw rectangle
  drawShape(4, width * 0.75, height * 0.25);

  // draw hexagon
  drawShape(6, width * 0.25, height * 0.75);

  // draw circle
  drawShape(50, width * 0.75, height * 0.75);  
}

void drawShape(int numVertices, float x, float y)
{
  pushMatrix();
  translate(x, y);
  
  fill(30);
  
  float vertexDegree = 360 / numVertices;
  float shapeRadius = 150;
  
  beginShape();
  for(int i = 0; i < numVertices; i++)
  {
    float vertexX = cos(radians(i * vertexDegree)) * shapeRadius;
    float vertexY = sin(radians(i * vertexDegree)) * shapeRadius;
    vertex(vertexX, vertexY);
  }
  endShape();
  
  
  // draw the center point
  fill(255, 0, 0);
  ellipse(0, 0, 15, 15);
  popMatrix();
}
