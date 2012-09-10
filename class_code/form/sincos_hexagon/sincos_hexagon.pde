void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noStroke();
  
  translate(width / 2, height / 2);
  
  
  
  // draw the hexagon
  fill(30);
  
  float numVertices = 6;
  float vertexDegree = 360 / numVertices;
  float shapeRadius = 300;
  
  beginShape();
  for(int i = 0; i < numVertices; i++)
  {
    float x = cos(radians(i * vertexDegree)) * shapeRadius;
    float y = sin(radians(i * vertexDegree)) * shapeRadius;
    vertex(x, y);
  }
  endShape();
  
  
  // draw the center point
  fill(255, 0, 0);
  ellipse(0, 0, 30, 30);
}
