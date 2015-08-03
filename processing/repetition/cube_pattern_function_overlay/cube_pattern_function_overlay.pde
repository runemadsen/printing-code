void setup()
{
  size(1280, 800);
  smooth();
  background(230, 230, 230);
  noStroke();

  drawPattern(0, 0, width + 100, height + 100, 10);
  drawPattern(0, 0, width + 100, height + 100, 30);
}

void drawPattern(int x, int y, int w, int h, int siz)
{
	float a = siz;
	float b = siz * 2;
	float c = siz * 3;
	float d = siz * 4;

	translate(x, y);

	for(float curY = 0; curY <= h; curY += c) 
	{
	  for(float curX = 0; curX <= w; curX += d)
	  {
	    pushMatrix();
	    if((curY/c) % 2 == 0)  translate(curX - b, curY);
	    else            			 translate(curX, curY);

	    fill(5, 133, 170);
	    quad(0, -c, b, -b, 0, -a, -b, -b);
	    fill(1, 40, 76);
	    quad(-b, -b, 0, -a, 0, a, -b, 0);
	    
	    // hide the gray side to reveal pattern underneath
	    //fill(155);
	    //quad(b, -b, b, 0, 0, a, 0, -a);

	    popMatrix();
	  }
	}
}