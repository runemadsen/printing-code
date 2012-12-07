ArrayList<PVector> points = new ArrayList();

void setup()
{
  size(500, 500);
  fill(255);
  
  // add points to arraylist
  points.add( new PVector(200, 200));
  points.add( new PVector(400, 300)); 
  
  float particleMaxRadius = 150;
  int numParticles = 400;
  
  // loop through all the points
  for(int i = 0; i < points.size(); i++)
  {
    // get the point
    PVector p = points.get(i);
   
    // draw numParticles particles around point
    for(int j = 0; j < numParticles; j++)
    {
      float radius = particleMaxRadius - (sin(radians((j % 90))) * particleMaxRadius);
      float rot = random(360);
      float x = cos(radians(rot)) * radius;
      float y = sin(radians(rot)) * radius;
      ellipse(p.x + x, p.y + y, 5, 5); 
    }
  }
}
