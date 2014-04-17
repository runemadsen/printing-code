import controlP5.*;

ControlP5 cp5;
ColorPicker cp;

int backgroundColor = 100;

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  noStroke();

  cp5 = new ControlP5(this);
  cp5.addSlider("backgroundColor").setPosition(100, 100).setRange(0, 255);
}

void draw()
{
  background(backgroundColor);
}