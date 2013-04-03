void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noFill();
  strokeWeight(3);

  translate(350, height/2);

  for (int i = 0; i<3; i++) 
  {
    stroke(random(0, 200));
    ellipse(i * 300, 0, 250, 250); 
  }
}