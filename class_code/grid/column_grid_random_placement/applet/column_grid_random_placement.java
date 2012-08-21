import processing.core.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class column_grid_random_placement extends PApplet {

public void setup()
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
class Column
{
  float x;
  float y;
  float w;
  float h;
  
  Column()
  {
    
  }
 
  Column(float _x, float _y, float _w, float _h)
  {
    x = _x;
    y = _y;
    w = _w;
    h = _h;
  }
}
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

  public void display()
  {
    // draw big bounding box
    noFill();
    stroke(255, 0, 0, 100);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    // draw each column
    for(int i = 0; i < cols; i++)
    {
      rect(columns[i].x, columns[i].y, columns[i].w, columns[i].h);
    }
  }
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "column_grid_random_placement" });
  }
}
