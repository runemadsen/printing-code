void setup() 
{
  size(1280, 800, P3D);
  fill(204);
}

void draw() 
{
  lights();
  background(0);
  
  camera(30.0, mouseY, 220.0, // eye
         0.0, 0.0, 0.0,       // center
         0.0, 1.0, 0.0);      // up
  
  noStroke();
  box(90);
  stroke(255);
  line(-100, 0, 0, 100, 0, 0);
  line(0, -100, 0, 0, 100, 0);
  line(0, 0, -100, 0, 0, 100);
}