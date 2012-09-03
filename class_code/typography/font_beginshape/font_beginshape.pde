float[][] normalizedOutline = {
  {493, 354},
  {156, 354},
  {156, 650},
  {71, 650},
  {71, 0},
  {156, 0},
  {156, 282},
  {493, 282},
  {493, 0},
  {573, 0},
  {573, 650},
  {493, 650},
  {493, 354},
  {493, 354}
};

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();
  fill(30);
    
  translate(300, 50);
  
  beginShape();
  for(int i = 0; i < normalizedOutline.length; i++)
  {
    vertex(normalizedOutline[i][0], normalizedOutline[i][1]);
  }
  endShape(CLOSE);
}
