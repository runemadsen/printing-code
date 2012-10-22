void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noFill();
  strokeWeight(3);

  translate(350, height/2);

  // each of the 3 circles has 50% chance of showing
  for (int i = 0; i<3; i++) 
  {
    if(random(1) > 0.5)   stroke(200);
    else                  stroke(30);
    
    ellipse(i * 300, 0, 250, 250); 
  }

  saveFrame("random_simple.jpg");
}