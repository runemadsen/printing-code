import controlP5.*;

ControlP5 cp5;
ColorPicker cp;

void setup()
{
  size(1280, 800);
  background(255);
  smooth();
  colorMode(HSB, 1, 1, 1);
  noStroke();

  cp5 = new ControlP5(this);
  cp = cp5.addColorPicker("picker").setPosition(0, 0).setColorValue(color(0, 1, 0.5));
}

void draw()
{
  background(cp.getColorValue());
}