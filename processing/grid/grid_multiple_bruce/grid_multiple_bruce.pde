void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  colorMode(HSB, 360, 100, 100);
  smooth();
  
  int fontSize = 90;
  
  PFont helvetica = createFont("Arial", fontSize);
  textFont(helvetica);
  
  PImage bruce = loadImage("bruce.jpg");
  
  // create a column grid object
  ColumnGrid columnGrid = new ColumnGrid(6, 0);
  
  // loop through each column in the grid
  for(int i = 0; i < columnGrid.columns.length; i++)
  {
    // get the column and draw a lot of bruces
    Module column = columnGrid.columns[i];
    
    float yPos = column.y;
    float imageResize = column.w / bruce.width; 
    
    while(yPos < column.y + column.h)
    {
      tint(random(80, 120), random(50, 70), random(5, 20));
      image(bruce, column.x, yPos, bruce.width * imageResize, bruce.height * imageResize);
      noTint();
      yPos += bruce.height * imageResize; 
    }
  }
  
  // create a modular grid object
  ModularGrid modulegGrid = new ModularGrid(5, 4, 10, 100);
  
  fill(360);
  
  // draw a heading
  Module module1 = modulegGrid.modules[0][0];
  text("Bruce Springsteen", module1.x, module1.y + fontSize);
  
  // draw a heading
  fontSize = 30;
  textFont(helvetica, fontSize);
  Module module2 = modulegGrid.modules[0][1];
  String description = "Bruce Frederick Joseph Springsteen (born September 23, 1949), nicknamed \"The Boss\", is an American singer-songwriter and multi-instrumentalist who records and tours with the E Street Band. Springsteen is widely known for his brand of heartland rock, poetic lyrics, Americana sentiments centered on his native New Jersey and his lengthy and energetic stage performances, with concerts from the 1970s to the present decade running up to an uninterrupted 250 minutes in length";
  text(description, module2.x, module2.y + fontSize, module2.w * 5, module2.h * 3);
  
  
  // show both grids on top of each other
  columnGrid.display();
  modulegGrid.display();
  
  saveFrame("grab.png");
}
