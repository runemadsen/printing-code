/**
 * MOUSE
 * click               : set end position of the animations and trigger new one
 * 
 * KEYS
 * arrow up            : increase duration of animation
 * arrow down          : decrease duration of animation
 * arrow left          : change easing (scroll list)
 * arrow right         : change easing (scroll list)
 */

import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;

Easing[] easings = { Ani.LINEAR, Ani.QUAD_IN, Ani.QUAD_OUT, Ani.QUAD_IN_OUT, Ani.CUBIC_IN, Ani.CUBIC_IN_OUT, Ani.CUBIC_OUT, Ani.QUART_IN, Ani.QUART_OUT, Ani.QUART_IN_OUT, Ani.QUINT_IN, Ani.QUINT_OUT, Ani.QUINT_IN_OUT, Ani.SINE_IN, Ani.SINE_OUT, Ani.SINE_IN_OUT, Ani.CIRC_IN, Ani.CIRC_OUT, Ani.CIRC_IN_OUT, Ani.EXPO_IN, Ani.EXPO_OUT, Ani.EXPO_IN_OUT, Ani.BACK_IN, Ani.BACK_OUT, Ani.BACK_IN_OUT, Ani.BOUNCE_IN, Ani.BOUNCE_OUT, Ani.BOUNCE_IN_OUT, Ani.ELASTIC_IN, Ani.ELASTIC_OUT, Ani.ELASTIC_IN_OUT};
String[] easingsVariableNames = {"Ani.LINEAR", "Ani.QUAD_IN", "Ani.QUAD_OUT", "Ani.QUAD_IN_OUT", "Ani.CUBIC_IN", "Ani.CUBIC_IN_OUT", "Ani.CUBIC_OUT", "Ani.QUART_IN", "Ani.QUART_OUT", "Ani.QUART_IN_OUT", "Ani.QUINT_IN", "Ani.QUINT_OUT", "Ani.QUINT_IN_OUT", "Ani.SINE_IN", "Ani.SINE_OUT", "Ani.SINE_IN_OUT", "Ani.CIRC_IN", "Ani.CIRC_OUT", "Ani.CIRC_IN_OUT", "Ani.EXPO_IN", "Ani.EXPO_OUT", "Ani.EXPO_IN_OUT", "Ani.BACK_IN", "Ani.BACK_OUT", "Ani.BACK_IN_OUT", "Ani.BOUNCE_IN", "Ani.BOUNCE_OUT", "Ani.BOUNCE_IN_OUT", "Ani.ELASTIC_IN", "Ani.ELASTIC_OUT", "Ani.ELASTIC_IN_OUT"};
String code = "";

float x = 256;
float y = 256;
float duration = 1;

int index = 26;
Easing currentEasing = easings[index];

void setup() {
  size(1280, 800);
  smooth();
  noStroke();
  cursor(CROSS);

  // you have to call always Ani.init() first!
  Ani.init(this);
}

void draw() {
  background(30);
  fill(40, 100, 170);
  int diameter = 100;
  ellipse(x,y,diameter,diameter);

  code = "Ani.to(this, "+nf(duration,0,2)+", \"x\", mouseX, "+easingsVariableNames[index]+");";
  text(code,10,20);
}

void mouseReleased() {
  Ani.to(this, duration, "x", mouseX, easings[index]);
  Ani.to(this, duration, "y", mouseY, easings[index]);
  println(code);
}

void keyPressed() {
  if (keyCode == UP) duration += 0.1;
  if (keyCode == DOWN) duration -= 0.1;
  duration = max(0.25,duration);
}

void keyReleased() {
  if (keyCode == LEFT) index--;
  if (keyCode == RIGHT) index++;
  index = constrain(index,0,easings.length-1);
}