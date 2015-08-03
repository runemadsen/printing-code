int[] colors = {0, 0, 0, 0};

PImage bruce;

void setup() 
{
  size(1280, 800);
  background(255);
  smooth();
  
  bruce = loadImage("bruce.jpg");
  bruce.loadPixels();
  
  // find 4 random colors from the image
  for(int i = 0; i < colors.length; i++)
  {
    int randomPixel = int(random(bruce.pixels.length));
    float r = red(bruce.pixels[randomPixel]);
    float g = green(bruce.pixels[randomPixel]);
    float b = blue(bruce.pixels[randomPixel]);
    colors[i] = color(r, g, b);
  }
  
  // draw image
  translate(130, 180);
  image(bruce, 0, 0);

  // draw logo
  translate(570, 20);

  noStroke();
  
  fill(colors[0]);
  beginShape();
  vertex(3, 80);
  vertex(190, 102);
  vertex(190, 147);
  vertex(67, 274);
  vertex(3, 175);
  vertex(3, 80);
  endShape();

  fill(colors[1]);
  beginShape();
  vertex(10, 76);
  vertex(194, 96);
  vertex(409, 13);
  vertex(275, 3);
  vertex(9, 77);
  endShape();

  fill(colors[2]);
  beginShape();
  vertex(197, 101);
  vertex(421, 13);
  vertex(421, 166);
  vertex(378, 332);
  vertex(197, 150);
  vertex(197, 102);
  endShape();

  fill(colors[3]);
  beginShape();
  vertex(69, 278);
  vertex(193, 153);
  vertex(371, 336);
  vertex(125, 335);
  vertex(70, 278);
  endShape();
  
  saveFrame("grab.png");
}

