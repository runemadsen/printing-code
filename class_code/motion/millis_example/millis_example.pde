import toxi.util.datatypes.*;

long lastSnap = 0;
float chosenTime = 0;
FloatRange range = new FloatRange(1000, 4000);

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  colorMode(HSB, 1, 1, 1);
  noStroke();

  chosenTime = range.pickRandom();
}

void draw()
{
  if(millis() - lastSnap > chosenTime)
  {
    fill(0.6, random(0.5, 0.8), random(0.5, 0.8));
    ellipse(random(width), random(height), 300, 300);

    lastSnap = millis();
    chosenTime = range.pickRandom();  
  }
}