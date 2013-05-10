void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();
  fill(30);
  
  // create a grid object
  ModularGrid grid = new ModularGrid(6, 4, 10, 50);
  
  // loop forever until we break out
  while(true)
  {
    // get a random collection of modules max 3x4
    Module module = grid.getRandomModule(3, 4);
    
    // if there are any left, draw them
    if(module != null)
    {
      rect(module.x, module.y, module.w, module.h);
    }
    // else break out
    else
    {
      break;
    } 
  }
  
  // we can even implement a function that draws the grid for us
  grid.display();
  
  saveFrame("grab.png");
}
