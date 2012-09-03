float[][] normalizedOutline = {
{0.7586207, 0.5448276},
{0.2413793, 0.5448276},
{0.2413793, 1.0},
{0.11034483, 1.0},
{0.11034483, 0.0},
{0.2413793, 0.0},
{0.2413793, 0.43448275},
{0.7586207, 0.43448275},
{0.7586207, 0.0},
{0.8827586, 0.0},
{0.8827586, 1.0},
{0.7586207, 1.0},
{0.7586207, 0.5448276},
{0.7586207, 0.5448276}
};

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();
  fill(30);
  
  int fontSize = 150;
  
  translate(100, 50);
  
  beginShape();
  for(int i = 0; i < normalizedOutline.length; i++)
  {
    vertex(normalizedOutline[i][0] * fontSize, normalizedOutline[i][1] * fontSize);
  }
  endShape(CLOSE);
  
  fontSize = 650;
  
  translate(200, 0);
  
  beginShape();
  for(int i = 0; i < normalizedOutline.length; i++)
  {
    vertex(normalizedOutline[i][0] * fontSize, normalizedOutline[i][1] * fontSize);
  }
  endShape(CLOSE);
}
