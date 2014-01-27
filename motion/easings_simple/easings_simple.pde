import de.looksgood.ani.*;

/**
 * Ani.LINEAR
 * Ani.QUAD_IN
 * Ani.QUAD_OUT
 * Ani.QUAD_IN_OUT
 * Ani.CUBIC_IN
 * Ani.CUBIC_IN_OUT
 * Ani.CUBIC_OUT
 * Ani.QUART_IN
 * Ani.QUART_OUT
 * Ani.QUART_IN_OUT
 * Ani.QUINT_IN
 * Ani.QUINT_OUT
 * Ani.QUINT_IN_OUT
 * Ani.SINE_IN
 * Ani.SINE_OUT
 * Ani.SINE_IN_OUT
 * Ani.CIRC_IN
 * Ani.CIRC_OUT
 * Ani.CIRC_IN_OUT
 * Ani.EXPO_IN
 * Ani.EXPO_OUT
 * Ani.EXPO_IN_OUT
 * Ani.BACK_IN
 * Ani.BACK_OUT
 * Ani.BACK_IN_OUT
 * Ani.BOUNCE_IN
 * Ani.BOUNCE_OUT
 * Ani.BOUNCE_IN_OUT
 * Ani.ELASTIC_IN
 * Ani.ELASTIC_OUT
 * Ani.ELASTIC_IN_OUT
 */

float x = 256;
float y = 256;

void setup() 
{
  size(1280, 800);
  smooth();
  noStroke();
  Ani.init(this);

  // set a default easing for all easings
  //Ani.setDefaultEasing(Ani.QUART_IN_OUT);
}

void draw() 
{
  background(30);
  fill(40, 100, 170);
  ellipse(x, y, 180, 180);
}

void mouseReleased() 
{
    Ani.to(this, 3, "x", mouseX, Ani.CUBIC_OUT);
    Ani.to(this, 1.5, "y", mouseY, Ani.BOUNCE_OUT);
}
