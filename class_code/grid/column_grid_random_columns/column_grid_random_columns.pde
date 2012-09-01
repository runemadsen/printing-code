void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  // create a grid object as a container for our grid variables
  Grid grid = new Grid(6, 50);
  
  fill(30);
  
  // not we can use that grid object to find placements in the grid
  Column secondColumn = grid.columns[1];
  rect(secondColumn.x, secondColumn.y, secondColumn.w, secondColumn.h / 2);
  
  // look how nice it is!
  Column fourthColumn = grid.columns[3];
  Column fifthColumn = grid.columns[4];
  ellipseMode(CORNER);
  ellipse(fourthColumn.x, (fourthColumn.y + fourthColumn.h) - (fourthColumn.w + fifthColumn.w), fourthColumn.w + fifthColumn.w, fourthColumn.w + fifthColumn.w);
  
  // we can even implement a function that draws the grid for us
  grid.display();
  
  saveFrame("grab.png");
}
