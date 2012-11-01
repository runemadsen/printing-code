int DPI = 300; // Print resolution.
float PRINTW = 17; // Print width in inches.
float PRINTH = 23; // Print height in inches.
PGraphics canvas;
PImage view;

void setup() {
  // DETERMINE ORIENTATION AND FIT IT ON YOUR COMPUTER SCREEN
  float maxW = displayWidth*.75, maxH = displayHeight*.75;
  float screenDPI = (((maxW/PRINTW)*PRINTH) < maxH) ? maxW/PRINTW : maxH/PRINTH;
  // SET APPLET SIZE
  size((int)Math.ceil(PRINTW * screenDPI), (int)Math.ceil(PRINTH * screenDPI), P2D);
  // SET CANVAS SIZE
  canvas = createGraphics((int)PRINTW*DPI, (int)PRINTH*DPI);
  
  
  background(0); 
  
  
  canvas.beginDraw();
  canvas.background(255);
  canvas.endDraw();
  refresh();
}

void draw() {
  image(view, 0, 0); 
}

void keyPressed() {
  if (key == 'r') {
    refresh();
  } 
}

void refresh() {
  
    view = canvas.get();
    view.resize(width, height);
}
