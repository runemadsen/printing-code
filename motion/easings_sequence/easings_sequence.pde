import de.looksgood.ani.*;

float x = 100;
float y = 100;
float diameter = 100;

AniSequence sequence;

void setup() 
{
  size(1280, 800);
  smooth();
  noStroke();
  Ani.init(this);

  sequence = new AniSequence(this);
  
  sequence.beginSequence();
  
  sequence.add(Ani.to(this, 1, "diameter", 55));
  sequence.add(Ani.to(this, 2, "x:1000,y:100", Ani.ELASTIC_IN_OUT));
  sequence.add(Ani.to(this, 1, "x:750,y:400"));
  sequence.add(Ani.to(this, 1, "x:100,y:700", Ani.BOUNCE_OUT));
  sequence.add(Ani.to(this, 2, "diameter", 250, Ani.SINE_IN_OUT));

  // we want to do these next 2 at the same time, so we wrap them in beginStep() and endStep()
  sequence.beginStep();
  sequence.add(Ani.to(this, 1, "x:50,y:50"));
  sequence.add(Ani.to(this, 2, "diameter", 50));
  sequence.endStep();

  sequence.endSequence();

  // start the sequence
  sequence.start();

  // other sequence methods
  //sequence.isPlaying();
  //sequence.pause();
  //sequence.resume();
}

void draw() 
{
  background(30);
  fill(40, 100, 170);
  ellipse(x, y, diameter, diameter);
}