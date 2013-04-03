void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noFill();
  strokeWeight(3);

  translate(350, height/2);

  Randomizer ran = new Randomizer();
  ran.addChoice(color(255, 0, 0), 0.2); // red has a 20% chance of being picked
  ran.addChoice(color(0, 255, 0), 0.5); // red has a 50% chance of being picked
  ran.addChoice(color(0, 0, 255), 0.3); // red has a 30% chance of being picked

  for (int i = 0; i<3; i++) 
  {
    stroke(ran.getRandom());
    ellipse(i * 300, 0, 250, 250); 
  }
}