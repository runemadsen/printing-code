void setup()
{
  size(1280, 800);
  smooth();
  strokeWeight(3);
  stroke(30);

  // this is the direction of the line
  PVector myLine = new PVector(300, 500);
  
  // now I can translate anywhere and draw that line
  translate(50, 50);
  line(0, 0, myLine.x, myLine.y);

  translate(400, 200);
  line(0, 0, myLine.x, myLine.y);

  // i can make the line shorter or longer by multiplying the vector
  translate(50, 0);
  myLine.mult(0.5);
  line(0, 0, myLine.x, myLine.y);

  // i can even subtract two vectors from each other
  PVector smallLine = new PVector(100, 100);
  translate(400, 0);
  line(0, 0, smallLine.x, smallLine.y);
  myLine.sub(smallLine);
  line(0, 0, myLine.x, myLine.y);


  saveFrame("vectors_subtraction.png");
}