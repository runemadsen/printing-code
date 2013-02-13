void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  rectMode(CENTER);
  noStroke();

  translate(width/2, height/2);
  
  // red
  fill(0, 100, 100);
  rect(-200, 0, 100, 100);

  // green
  fill(120, 100, 100);
  rect(0, 0, 100, 100);

  // blue
  fill(240, 100, 100);
  rect(200, 0, 100, 100);
}