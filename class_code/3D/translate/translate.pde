void setup() 
{
  size(1280, 800, P3D);
  fill(255);
}

void draw() 
{
  background(0);
  noStroke();
  
  translate(300, 300);
  rect(0, 0, 200, 200);

  translate(300, 0, 200);
  rect(0, 0, 200, 200);

  translate(300, 0, -400);
  rect(0, 0, 200, 200);
}