class Grid
{
  int cols;
  float pageMargin;
  Column[] columns;
  
  Grid(int _cols, float _pageMargin)
  {
    cols = _cols;
    pageMargin = _pageMargin;
    
    // cache the width of the column. Remember to cast as float, otherwise the columns will not line up
    float colWidth = ((float)width - (2*pageMargin)) / cols;
    
    // make column objects
    columns = new Column[cols];
    
    for(int i = 0; i < cols; i++)
    {
      columns[i] = new Column();
      columns[i].x = pageMargin + (i*colWidth);
      columns[i].y = pageMargin;
      columns[i].w = colWidth;
      columns[i].h = height - (2*pageMargin);
    }
  }

  void display()
  {
    // draw big bounding box
    noFill();
    strokeWeight(3);
    stroke(0, 114, 188);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw each column
    for(int i = 0; i < cols; i++)
    {
      rect(columns[i].x, columns[i].y, columns[i].w, columns[i].h);
    }
  }
}