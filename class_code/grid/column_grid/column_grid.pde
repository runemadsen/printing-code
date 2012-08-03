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
  Column oneColumn = grid.getColumns(2, 1);
  rect(oneColumn.x, oneColumn.y, oneColumn.w, oneColumn.h / 2);
  
  // look how nice it is!
  Column anotherColumn = grid.getColumns(4, 2);
  ellipseMode(CORNER);
  ellipse(anotherColumn.x, anotherColumn.h - anotherColumn.w, anotherColumn.w, anotherColumn.w);
  
  // we can even implement a function that draws the grid for us
  //grid.display();
}
