import processing.pdf.*;
import controlP5.*;


ControlP5 cp5;
ColorPicker cubeColor1;
ColorPicker cubeColor2;

int cubeSize = 10;
boolean savePDF = false;

void setup()
{
  size(1280, 800);
  background(255);
  smooth();

  cp5 = new ControlP5(this);

	Group g1 = cp5.addGroup("g1")
                .setPosition(100,100)
                .setBackgroundHeight(100)
                .setBackgroundColor(color(255,50))
                .setLabel("Cube Colors.");

  cubeColor1 = cp5.addColorPicker("cubeColor1")
  								.setPosition(0, 0)
  								.setColorValue(color(8, 132, 168))
  								.setGroup(g1);
  
  cubeColor2 = cp5.addColorPicker("cubeColor2")
  								.setPosition(0, 70)
  								.setColorValue(color(0, 39, 78))
  								.setGroup(g1);

 	// add the slider directly to p5 with the name of the variable it's controlling
  cp5.addSlider("cubeSize")
     .setPosition(100,50)
     .setRange(1,50);
}

void draw()
{
  if(savePDF)
  {
    println("Saving PDF");
    beginRecord(PDF, "grab" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + "_" + millis() + ".pdf"); 
  }

	background(255);
        noStroke();
	drawPattern(0, 0, width + 100, height + 100, cubeSize);
	drawPattern(0, 0, width + 100, height + 100, cubeSize*3);

  if(savePDF)
  {
    endRecord();
    println("Saved PDF");
    savePDF = false;
  }
}

void drawPattern(int xPos, int yPos, int w, int h, int siz)
{
	float a = siz;
	float b = siz * 2;
	float c = siz * 3;
	float d = siz * 4;

	translate(xPos, yPos);

  for (int y = 0; y <= height * 1.5; y += c) 
  {
    for (int x = 0; x <= width * 1.5; x += d)
    {
      pushMatrix();
      if((y/c) % 2 == 0)  translate(x - b, y);
      else            translate(x, y);

      fill(cubeColor1.getColorValue());
      quad(0, -c, b, -b, 0, -a, -b, -b);
      fill(cubeColor2.getColorValue());
      quad(-b, -b, 0, -a, 0, a, -b, 0);

      popMatrix();
    }
  }
}

void keyPressed()
{
  if(key == 's')
  {  
    savePDF = true;
  }
}
