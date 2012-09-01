void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  // create a column grid object
  ColumnGrid columnGrid = new ColumnGrid(6, 50);
  
  // loop through each column in the grid
  for(int i = 0; i < columnGrid.columns.length; i++)
  {
    // get the column and draw a rectangle
    Module column = columnGrid.columns[i];
    fill(50 + (i*30));
    rect(column.x, column.y, column.w, column.h);
  }
  
  // create a modular grid object
  ModularGrid modulegGrid = new ModularGrid(5, 4, 10, 100);
  
  fill(30);
  
  // draw 6 random rectangles in the modules
  for(int i = 0; i < 6; i++)
  {
    int ranCol = floor(random(modulegGrid.cols));
    int ranRow = floor(random(modulegGrid.rows));
    
    Module module = modulegGrid.modules[ranCol][ranRow];
    
    rect(module.x, module.y, module.w, module.h);
  }
  
  // show both grids on top of each other
  columnGrid.display();
  modulegGrid.display();
  
  saveFrame("grab.png");
}
