/*  Properties
_________________________________________________________________ */

import processing.pdf.*;

// Set these variables to the print size you want (in inches)
// The resulting PDF will be this aspect ratio
float print_width = 15;
float print_height = 22;

// This will help make the sketch window bigger
float make_bigger = 40;

boolean savePDF = false;


/*  Setup
_________________________________________________________________ */

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
}

void draw()
{
	if(savePDF)
	{
		println("Saving PDF");
		beginRecord(PDF, "grab" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + "_" + millis() + ".pdf"); 
	}

	background(30);
  smooth();
  fill(frameCount % 255, 0, 0); 
  ellipse(width / 2, height / 2, 400, 400); 

  if(savePDF)
  {
  	endRecord();
  	println("Saved PDF");
  	savePDF = false;
  }
}

void keyPressed()
{
  if(key == 's')
  {  
    savePDF = true;
  }
}