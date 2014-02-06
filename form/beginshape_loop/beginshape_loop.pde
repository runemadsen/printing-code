void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  fill(30);
  noStroke();
  
  translate((width / 2) - 200, (height / 2) - 200);
  beginShape();
  
  for(int i = 0; i < 40; i++)
  {
    vertex(random(400), random(400));
  }
  
  endShape();
}
