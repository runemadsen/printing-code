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
    // choose a number from 0-1
    float ran = random(1);

    // red has a 20% chance of being picked
    if(ran < 0.2)                     stroke(255, 0, 0);
    // green has 50% chance of being picked
    else if(ran > 0.2 && ran < 0.7)   stroke(0, 255, 0);
    // blue has a 30% chance og being picked
    else                              stroke(0, 0, 255);

    ellipse(i * 300, 0, 250, 250); 
  }
}