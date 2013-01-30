/*  Properties
_________________________________________________________________ */

PGraphics canvas;
int canvas_width = 3508;
int canvas_height = 4961;

float ratioWidth = 1;
float ratioHeight = 1;
float ratio = 1;

void setup()
{ 
  size(1300, 850);
  background(30);
  
  canvas = createGraphics(canvas_width, canvas_height);
  
  calculateResizeRatio();
}

/*  Draw
_________________________________________________________________ */

void draw()
{
  canvas.beginDraw();
    canvas.background(255);
    canvas.noStroke();
    canvas.fill(255, 0, 0);
    canvas.ellipse(frameCount * 10, canvas.height / 2, 2000, 2000);
  canvas.endDraw();
  
  float resizedWidth = (float) canvas.width * ratio;
  float resizedHeight = (float) canvas.height * ratio;
  
  image(canvas, (width / 2) - (resizedWidth / 2), (height / 2) - (resizedHeight / 2), resizedWidth, resizedHeight);
}

/*  Calculate resizing
_________________________________________________________________ */

void calculateResizeRatio()
{
  ratioWidth = (float) width / (float) canvas.width;
  ratioHeight = (float) height / (float) canvas.height;
  
  if(ratioWidth < ratioHeight)  ratio = ratioWidth;
  else                          ratio = ratioHeight;
}

/*  Keypressed
_________________________________________________________________ */

void keyPressed()
{
  if(key == 's')
  {  
    println("Saving Image");
    canvas.save("image_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".png");
    println("Saved Image"); 
  }
}
