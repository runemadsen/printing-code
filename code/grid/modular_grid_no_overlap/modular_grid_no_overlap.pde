/* This sketch shows how to draw a modular grid in Processing, using 4 simple variables:
      
      1. Number of Columns
      2. Number of Rows
      3. Gutter size
      4. Page Margin
*/

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  fill(30);
  
  // create a grid object as a container for our grid variables
  ModularGrid grid = new ModularGrid(6, 4, 10, 50);
  
  // loop through 10 times and get a unique grid every time
  for(int i = 0; i < 10; i++)
  {
    Module module = grid.getRandomModule();
    rect(module.x, module.y, module.w, module.h);
  }
  
  // we can even implement a function that draws the grid for us
  grid.display();
}
