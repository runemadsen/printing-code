Randomizer ran;

void setup()
{
  size(1280, 800);
  background(255); 
  smooth();
  noFill();
  strokeWeight(3);
  rectMode(CENTER);

  ran = new Randomizer();

  translate(350, 250);

  // first use simple random decide function
  for (int i = 0; i<3; i++) 
  {
    if(ran.decide(0.5))   stroke(200);
    else                stroke(30);
    
    ellipse(i * 300, 0, 250, 250); 
  }

  // then use more advanced choice function to decide what shape to draw. ellipse are 3 times more likely to be chosen
  stroke(30);
  translate(0, 300);
  ran.addChoice("rect", 1);
  ran.addChoice("ellipse", 3);

  for (int i = 0; i<3; i++) 
  {
    String result = ran.makeChoice();

    if(result == "rect")
    {
      rect(i * 300, 0, 250, 250);
    }
    else if(result == "ellipse")
    {
      ellipse(i * 300, 0, 250, 250); 
    }
  }

  saveFrame("random_class.jpg");
}