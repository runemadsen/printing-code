import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noFill();
  strokeWeight(3);

  translate(350, height/2);

  WeightedRandomSet<Integer> ran = new WeightedRandomSet<Integer>();

  ran.add(color(255, 0, 0), 2);
  ran.add(color(0, 255, 0), 5);
  ran.add(color(0, 0, 255), 3);

  for (int i = 0; i<3; i++) 
  {
    stroke(ran.getRandom());
    ellipse(i * 300, 0, 250, 250); 
  }
}
