Randomizer ran;

void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  noFill();
  
  // create a randomizer
  ran = new Randomizer();

  // now create a range of setting objects
  ran.addCircle( new Circle(1, 300, #cb4837, 3, 30) );
  ran.addCircle( new Circle(1, 100, #4a608c, 10, 0) );
  ran.addCircle( new Circle(1, 250, #f2f449, 1, 157) );

  // randomly pick 3 circles
  for (int i = 0; i < 3; i++){
    Circle cir = ran.chooseCircle();
    cir.display();  
  }
}