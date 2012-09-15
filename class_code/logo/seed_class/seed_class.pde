int maxCircles = 300;
float radius = 10; // radius of the circles
float expansion = 15; // distance between circles
float spiral_type = 1.0; // controls the spinning of the shape

PImage bruce;

void setup() 
{ 
  size(1280, 800);
  background(30);
  smooth();
  
  bruce = loadImage("bruce.jpg");
  bruce.loadPixels();
  
  // draw reference image
  float scaleFactor = 0.4;
  image(bruce, 200, (height / 2) - ((bruce.height * scaleFactor) / 2), bruce.width * scaleFactor, bruce.height * scaleFactor);
  
  translate((width / 2) + 200, height / 2);
  drawSunFlower();
}

void drawSunFlower()
{
  // calculate the fibonacci number
  float phi = (1 + sqrt(5.0))/2.0;
  float increment = radians(360 * phi + (360/spiral_type));
  
  // create circle objects from them
  Circle[] circles = new Circle[maxCircles];
  
  float xMax = 0;
  float yMax = 0;
  float xMin = 0;
  float yMin = 0;
  
  for(int i = 1; i < circles.length; i++) 
  {
    float distance = sqrt(i) * expansion;
    float angle = i * increment;
    
    Circle circle = new Circle();
    circle.x = cos(angle) * distance;
    circle.y = sin(angle) * distance;
    circle.rad = radius;
    circles[i] = circle;
    
    if(circle.x > xMax)  xMax = circle.x;
    if(circle.y > yMax)  yMax = circle.y;
    if(circle.x < xMin)  xMin = circle.x;
    if(circle.y < yMin)  yMin = circle.y;
  }
  
  // draw all of the circles
  noStroke();
  
  for(int i = 1; i < circles.length; i++) 
  {
    // find this spot x,y in a normalized number from 0-1
    float normX = (circles[i].x - xMin) / (xMax - xMin);
    float normY = (circles[i].y - yMin) / (yMax - yMin);
    
    // use this number to find position inside image
    int imageX = int((bruce.width - 1) * normX);
    int imageY = int((bruce.height - 1) * normY);
    
    // use the well-known calculation to find the index in the pixel aray from x,y
    int pixelIndex = imageX + imageY * bruce.width;
   
    fill(bruce.pixels[pixelIndex]);
    ellipse(circles[i].x, circles[i].y, circles[i].rad*2, circles[i].rad*2);
  }  
}
