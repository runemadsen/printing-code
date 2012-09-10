void setup()
{  
  size(1280, 800);
  smooth();
  background(255);
  translate(width / 2, height / 2);
  
  int circleRadius = 200;
  float numVertices = 30;
  float vertexDegree = 360 / numVertices;
  
  fill(30);
  noStroke();
  
  beginShape();
  for(int i = 0; i < numVertices; i++)
  {
    float x = cos(radians(i * vertexDegree)) * (circleRadius + random(-50, 50));
    float y = sin(radians(i * vertexDegree)) * (circleRadius + random(-50, 50));
    curveVertex(x, y);
  }
  endShape();
}
