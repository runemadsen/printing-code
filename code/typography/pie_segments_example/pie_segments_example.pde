// declare the letters in this form:
// x1, y1, radius1, startdegree1, enddegree1, x2, y2, radius2, startdegree2, enddegree2
// the radius always goes to 300
float[][] letters = {    
  { 150, 0, 300, 62, 56, 150, 0, 300, 62, 56}, // A
  { 60, 103, 105, -90, 180, 160, 200, 105, 180, 360}, // B
  { 165, 150, 150, 60, 245, 165, 150, 150, 60, 245}, // C
  { 80, 150, 148, -90, 180, 80, 150, 148, -90, 180}, // D
  { 165, 150, 150, 53, 260, 250, 145, 90, 135, 90 }, // E
  { 165, 150, 150, 90, 230, 235, 170, 90, 160, 90 }, // F
  { 165, 150, 150, 55, 245, 260, 310, 178, 220, 50 }, // G
  { 30, 150, 150, -90, 180, 270, 150, 150, 90, 180 }, // H
  { 200, 285, 285, -110, 20, 102, 15, 286, 70, 20 }, // I
  { 255, -5, 235, 90, 28, 150, 198, 110, -20, 210 }, // J
  { 30, 310, 310, 270, 35, 180, 150, 150, 55, 250 }, // K
  { 35, -10, 310, 60, 30, 35, 300, 230, -25, 25 }, // L
  { -30, 306, 300, 277, 42, 190, 160, 150, 140, 290 }, // M
  { 35, 300, 300, 270, 50, 275, 0, 300, 90, 50 }, // N
  { 150, 150, 150, 0, 360, 150, 150, 150, 0, 360 }, // O
  { 150, 110, 110, 0, 360, 65, 305, 260, 262, 46 }, // P
  { 145, 150, 143, -90, 360, 220, 303, 85, 180, 192 }, // Q
  { 50, 310, 310, 270, 40, 185, 200, 107, 43, 180 }, // R
  { 153, 95, 95, 90, 233, 150, 190, 110, -90, 250 }, // S
  { 150, 130, 130, 180, 180, 205, 170, 130, 75, 180 }, // T
  { 150, 150, 150, -70, 250, 0, 150, 140, -90, 90 }, // U
  { 150, 300, 300, -242, -56, 150, 300, 300, 242, 56 }, // V
  { 35, 160, 145, 245, 180, 265, 160, 145, 115, 180 }, // W
  { 150, 80, 95, -50, 280, 150, 220, 105, 130, 280 }, // X
  { 140, 90, 100, 60, 180, 120, 140, 160, -60, 180 }, // Y
  {30, 20, 240, 0, 45, 290, 290, 260, 180, 60 } // Z
};

// if we want the letters smaller than 300, let's multiply their numbers by this float
float scaling = 0.52;

void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  // let's loop through the numbers and scale their x,y down
  for(int i = 0; i < letters.length; i++)
  {
    letters[i][0] = letters[i][0] * scaling;
    letters[i][1] = letters[i][1] * scaling;
    letters[i][2] = letters[i][2] * scaling;
    letters[i][5] = letters[i][5] * scaling;
    letters[i][6] = letters[i][6] * scaling;
    letters[i][7] = letters[i][7] * scaling;
  }
  
  translate(50, 50);
  
  // draw normal letters
  int xPos = 0;
  int yPos = 0;
  
  for(int i = 0; i < letters.length; i++)
  {
    pushMatrix();
    translate(xPos, yPos);
    
    // draw guiding box
    noFill();
    stroke(255, 0, 0);
    rect(0, 0, 300 * scaling, 300 * scaling);
    
    drawPie(letters[i][0], letters[i][1], letters[i][2], letters[i][3], letters[i][4]);    
    drawPie(letters[i][5], letters[i][6], letters[i][7], letters[i][8], letters[i][9]);
    
    popMatrix(); 
    
    xPos += 320 * scaling;
    
    if(xPos >= width - (320 * scaling))
    {
      xPos = 0;
      yPos += 320 * scaling; 
    }
  }
}

void drawPie(float x, float y, float r, float s, float e)
{
  pushMatrix();
  translate(x, y);
  rotate(radians(s));
  fill(30);
  noStroke();
  arc(0, 0, r * 2, r * 2, radians(0), radians(e));
  popMatrix();
}
