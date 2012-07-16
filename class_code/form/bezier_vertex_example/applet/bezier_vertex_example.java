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

public class bezier_vertex_example extends PApplet {

ArrayList beziers = new ArrayList();

public void setup()
{
  size(600, 600);
  smooth();
  
  beziers.add( new Bezier(80, 0, 80, 75, 30, 75) );
  beziers.add( new Bezier(50, 80, 60, 25, 30, 20) );
}

public void draw()
{
  background(255);
  
  stroke(100);
  noFill();
  
  // draw bezier shape
  beginShape();
  vertex(30, 20);
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    bezierVertex(b.cx1, b.cy1, b.cx2, b.cy2, b.x, b.y);
  }
  endShape();
  
  // draw extra helpers
  for(int i = 0; i < beziers.size(); i++)
  {
    Bezier b = (Bezier) beziers.get(i);
    b.drawHelpers();
  }
}
class Bezier
{
  float cx1;
  float cy1;
  float cx2;
  float cy2;
  float x;
  float y;
  
  Bezier(float _cx1, float _cy1, float _cx2, float _cy2, float _x, float _y)
  {
    cx1 = _cx1;
    cy1 = _cy1;
    cx2 = _cx2;
    cy2 = _cy2;
    x = _x;
    y = _y;
  }
   
  public void drawHelpers()
  {
    noStroke();
    fill(255, 0, 0);
    ellipse(x, y, 7, 7);
    
    fill(0, 0, 255);
    ellipse(cx1, cy1, 4, 4);
    ellipse(cx2, cy2, 4, 4);
    
    stroke(170);
    noFill();
    line(x, y, cx1, cy1);
    line(x, y, cx2, cy2);
  }
}
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#FFFFFF", "bezier_vertex_example" });
  }
}
