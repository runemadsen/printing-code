void setup()
{
  size(600, 850);
  background(255);
  translate(width/2, 125);
  fill(30);

  int[] points = {3, 4, 6, 40};

  for (int i = 0; i < points.length; i++)
  {
    beginShape();
    for (int j = 0; j < points[i]; j++)
    {
      float vertexX = cos(radians(j * (360/points[i]))) * 100;
      float vertexY = sin(radians(j * (360/points[i]))) * 100;
      vertex(vertexX, vertexY);
    }
    endShape();
    translate(0, 200);
  }
}

