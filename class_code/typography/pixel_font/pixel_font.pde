int[][] letters = {
  
  { 0, 1, 1, 0, // A
   1, 0, 0, 1,
   1, 1, 1, 1,
   1, 0, 0, 1,
   1, 0, 0, 1 },
 
 { 1, 1, 1, 0, // B
   1, 0, 0, 1,
   1, 1, 1, 0,
   1, 0, 0, 1,
   1, 1, 1, 0 },   
   
 { 0, 1, 1, 1, // C
   1, 0, 0, 0,
   1, 0, 0, 0,
   1, 0, 0, 0,
   0, 1, 1, 1 }
};

int blockSize = 30;

void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  fill(30);
  smooth();
  
  // draw normal letters
  pushMatrix();
  translate(400, 150);
  for(int i = 0; i < letters.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
    
     // for each letter, draw pixel dots
     for(int j = 0; j < letters[i].length; j++)
     {
        if(letters[i][j] == 1)
        {
          rect(xPos, yPos, blockSize, blockSize);
        }
        
        xPos += blockSize;
        
        if(j % 4 == 3)
        {
          xPos = 0;
          yPos += blockSize; 
        }
     }
     
     translate(blockSize * 6, 0);
  }
  popMatrix();
  
  // draw normal letters
  pushMatrix();
  translate(400 + (blockSize/2), 450);
  rectMode(CENTER);
  for(int i = 0; i < letters.length; i++)
  {
     int xPos = 0;
     int yPos = 0;
    
     // for each letter, draw pixel dots
     for(int j = 0; j < letters[i].length; j++)
     {
        if(letters[i][j] == 1)
        {
          pushMatrix();
          translate(xPos, yPos);
          rotate(radians(random(-10, 10)));
          rect(0, 0, blockSize, blockSize);
          popMatrix();
        }
        
        xPos += blockSize;
        
        if(j % 4 == 3)
        {
          xPos = 0;
          yPos += blockSize; 
        }
     }
     
     translate(blockSize * 6, 0);
  }
  popMatrix();
}
