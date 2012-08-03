void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  // create a grid object as a container for our grid variables
  Grid grid = new Grid(6, 50);
  
  fill(30);
  ellipseMode(CORNER);
  
  // not we can use that grid object to find placements in the grid
  for(int i = 0; i < 10; i++)
  {
    int ranCol = round(random(1, 6));
    Column aColumn = grid.getColumns(ranCol, 1);
    ellipse(aColumn.x, random(aColumn.y, aColumn.y + aColumn.h - aColumn.w), aColumn.w, aColumn.w);
  }
  
  // we can even implement a function that draws the grid for us
  grid.display();
}
