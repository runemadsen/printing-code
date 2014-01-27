void setup()
{
  size(1280, 800);
  noStroke();
  fill(30);
  background(255);
  smooth();
  
  // create a grid object as a container for our grid variables
  Grid grid = new Grid(6, 50);
  ellipseMode(CORNER);
  
  // now we can use that grid object to find placements in the grid
  for(int i = 0; i < 10; i++)
  {
    int ranCol = round(random(5));
    Column aColumn = grid.columns[ranCol];
    ellipse(aColumn.x, random(aColumn.y, aColumn.y + aColumn.h - aColumn.w), aColumn.w, aColumn.w);
  }
  
  // we can even implement a function that draws the grid for us
  grid.display();
}
