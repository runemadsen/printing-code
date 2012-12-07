void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  strokeWeight(3);

  translate(width/2, height/2);

  int radius = 300;
  float numPoints = 100;
  float pointDegree = 300 / numPoints;
  float noiseCount = 0;

  ArrayList<PVector> points = new ArrayList<PVector>();
  
  for(int i = 0; i < numPoints; i++)
  {
    float x = cos(radians(pointDegree * i)) * radius;
    float y = sin(radians(pointDegree * i)) * radius;
    float n = noise(noiseCount) * 20;
    points.add(new PVector(x + n, y + n));
    noiseCount += 0.2;
  }
  
  for(int i = 0; i < 500; i++)
  {
    noStroke();
    fill(int(random(50, 255)), 0, 0, 30);
    PVector loc1 = points.get( int(random(0, points.size())) );
    PVector loc2 = points.get( int(random(0, points.size())) );
    PVector loc3 = points.get( int(random(0, points.size())) );
    triangle(loc1.x, loc1.y, loc2.x, loc2.y, loc3.x, loc3.y);
  }
  
  
  /*noFill();
  stroke(255);  
  beginShape();

  for(int i = 0; i < points.size(); i++)
  {
    vertex(points.get(i).x, points.get(i).y);
  }

  endShape();*/
}
