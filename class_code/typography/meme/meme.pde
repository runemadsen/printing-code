void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  rectMode(CENTER);

  noStroke();
  fill(30);

  int fontSize = 150;
  translate((width/2)-(fontSize*3.7), (height/2)-(fontSize*0.1));
  
  for(int i = 1; i < 5; i++)
  {
    pushMatrix();
    translate(i * fontSize * 1.5, 0);
    rotate(radians(i*90));
    rect(0, -(fontSize * 0.4), fontSize, fontSize * 0.2);
    rect(0, 0, fontSize, fontSize * 0.2);
    rect(0, fontSize * 0.4, fontSize, fontSize * 0.2);
    popMatrix();
  }
}
