/* Import libraries
----------------------------------------------------------- */

import geomerative.*;
import processing.pdf.*;

/* Global variables
----------------------------------------------------------- */

float print_width = 8.27;
float print_height = 11.69;
float make_bigger = 70;

RShape head;
RShape butterfly;
RShape eye;
RShape sigurros;

/* Setup
----------------------------------------------------------- */

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  setupShapes();
  smooth();

  /* 
  	FIRST.....
  	You will need to create your grid system. Change COLS, ROWS, GUTTER and PAGEMARGIN to integers.
  */

  ModularGrid grid = new ModularGrid(COLS, ROWS, GUTTER, PAGEMARGIN);

  beginRecord(PDF, "print.pdf");
	background(255);
  grid.display();
  noStroke();

  /* 
  	SECOND.....
  	Now place the shapes in the grid.
  	Try to place them, size them, overlay them, color them. Think about scale.
  	You will need to translate and scale the shapes to fit the modules. Here's how you do that:
	
			// first get a module
			Module first = grid.modules[0][0];
			
			// then translate to the module position
			translate(first.x, first.y);

			// then scale the shape beto the module before drawing it
			head.scale(first.w / head.width);

			// remember, that you can make the shape span 2 modules by doing this:
			head.scale(first.w / ((head.width * 2) + gutterSize));

			// then draw the shape
			head.draw();
  */
  
  // draw a head
  fill(255, 0, 0);
  head.draw();

  // draw a butterfly
  fill(0, 255, 0);
  butterfly.draw();

  // draw the first eye
  fill(255);
  eye.draw();
  fill(0);
  ellipse(eye.width/2, eye.height/2, eye.height, eye.height);

  // draw a second eye
  fill(255);
  eye.draw();
  fill(0);
  ellipse(eye.width/2, eye.height/2, eye.height, eye.height);

  // draw sigur ros
  fill(30);
  sigurros.draw();

  endRecord();
}




/* Stuff you don't need to worry about unless you want to
---------------------------------------------------- */

/*
	Some fun methods you can try to use in the RShape objects

	shape.draw(); // always draws in 0,0
	shape.translate(); // alternate translate just for this shape
	shape.scale(float); // scale the shape by a percentage
	shape.transform(x, y, width, height); // fit the shape inside a rectangle width this x,y,width,height
	shape.getX();
	shape.getY();
	shape.getWidth();
	shape.getHeight();
*/

void setupShapes()
{
	RG.init(this);
  RG.ignoreStyles(true);

  head = RG.loadShape("head.svg");
  butterfly = RG.loadShape("butterfly.svg");
  eye = RG.loadShape("eye.svg");
  sigurros = RG.loadShape("sigurros.svg");
}