class Grid
{
  float cols;
  float pageMargin;
  float colSize;
  
  Grid(float _cols, float _pageMargin)
  {
    cols = _cols;
    pageMargin = _pageMargin;
    
    // cache the width of the column. Remember to cast as float, otherwise the columns will not line up
    colSize = ((float)width - (2*pageMargin)) / cols;
  }
  
  Column getColumns(int startCol, int numCols)
  {
    // because we can't return multiple variable from a function, we create this model object that can hold x,y,w,h
    // and return that instead.
    Column col = new Column();
    
    // finding the x position of this column is a bit hard.
    col.x = pageMargin + ((startCol - 1) * colSize);
    
    // The rest of the values are easy to calculate
    col.y = pageMargin;
    col.w = colSize * numCols;
    col.h = height - (2*pageMargin);
    return col;
  }
  
  void display()
  {
    noFill();
    stroke(255, 0, 0, 100);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    float xPos = pageMargin + colSize; // do not repeat first line
    float yPos = pageMargin;
    
    while(xPos < width - pageMargin)
    {
      line(xPos, pageMargin, xPos, height - pageMargin);
      xPos += colSize;
    }
  }
}
