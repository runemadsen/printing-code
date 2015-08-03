int[] colors = {#1770ac, #cd402e, #fbd033};

float logoSize = 500;

float smallCubeRatio = 0.1;
int smallCubeSize = 0;

float largeCubeRatio = 0.3;
int largeCubeSize = 0;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  
  // calculate the size of the rectangles
  smallCubeSize = round(logoSize * smallCubeRatio);
  largeCubeSize = round(logoSize * largeCubeRatio);
  
  // make logo appear in the middle of the screen
  translate((width / 2) - (logoSize / 2), (height / 2) - (logoSize / 2));
  
  // draw outline of logo to help
  stroke(150);
  noFill();
  rect(0, 0, logoSize, logoSize);
  
  noStroke();
  // draw the cubes
  for(int i = 0; i < 3; i++)
  {
    // find small cube position
    int smallX = round(random(0, logoSize - smallCubeSize));
    int smallY = round(random(0, logoSize - smallCubeSize));
   
    // find large cube position
    int largeX = round(random(0, logoSize - largeCubeSize));
    int largeY = round(random(0, logoSize - largeCubeSize));
   
    // draw lines in between with simple check of where the lines should go
    fill(colors[i]);
    beginShape();
    
    // if large cube is in top left
    if(largeX < smallX && largeY < smallY)
    {
      vertex(largeX, largeY + largeCubeSize);
      vertex(largeX + largeCubeSize, largeY);
      vertex(smallX + smallCubeSize, smallY);
      vertex(smallX, smallY + smallCubeSize);
    }
    // if large cube is in top right
    if(largeX > smallX && largeY < smallY)
    {
      vertex(largeX, largeY);
      vertex(largeX + largeCubeSize, largeY + largeCubeSize);
      vertex(smallX + smallCubeSize, smallY + smallCubeSize);
      vertex(smallX, smallY);
    }
    // if large cube is in bottom right
    if(largeX > smallX && largeY > smallY)
    {
      vertex(smallX, smallY + smallCubeSize);
      vertex(smallX + smallCubeSize, smallY);
      vertex(largeX + largeCubeSize, largeY);
      vertex(largeX, largeY + largeCubeSize);
    }
    // if large cube is in bottom left
    if(largeX < smallX && largeY > smallY)
    {
      vertex(smallX, smallY);
      vertex(smallX + smallCubeSize, smallY + smallCubeSize);
      vertex(largeX + largeCubeSize, largeY + largeCubeSize);
      vertex(largeX, largeY);
    }
    
    endShape();
    
    // draw large cube
    fill(colors[i]);
    rect(largeX, largeY, largeCubeSize, largeCubeSize);
    
    // draw small cube
    fill(0);
    rect(smallX, smallY, smallCubeSize, smallCubeSize);   
  }
  
  saveFrame("grab.png");
}
