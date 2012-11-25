import de.looksgood.ani.*;
import de.looksgood.ani.easing.*;
import toxi.color.*;
import toxi.util.datatypes.*;

Easing[] easings = { Ani.LINEAR, Ani.QUAD_IN, Ani.QUAD_OUT, Ani.QUAD_IN_OUT, Ani.CUBIC_IN, Ani.CUBIC_IN_OUT, Ani.CUBIC_OUT, Ani.QUART_IN, Ani.QUART_OUT, Ani.QUART_IN_OUT, Ani.QUINT_IN, Ani.QUINT_OUT, Ani.QUINT_IN_OUT, Ani.SINE_IN, Ani.SINE_OUT, Ani.SINE_IN_OUT, Ani.CIRC_IN, Ani.CIRC_OUT, Ani.CIRC_IN_OUT, Ani.EXPO_IN, Ani.EXPO_OUT, Ani.EXPO_IN_OUT, Ani.BACK_IN, Ani.BACK_OUT, Ani.BACK_IN_OUT, Ani.BOUNCE_IN, Ani.BOUNCE_OUT, Ani.BOUNCE_IN_OUT, Ani.ELASTIC_IN, Ani.ELASTIC_OUT, Ani.ELASTIC_IN_OUT};
ArrayList<Ball> balls = new ArrayList();

float spacing; 
int numBalls;
float diameter;
Easing ranEasing;
float ranAnimationTime;
float ranDelayTime;
float ranSnap;
float colorChangeDegree;

void setup() 
{
  size(1280, 800);
  smooth();
  noStroke();
  colorMode(HSB, 1, 1, 1);
  Ani.init(this);

  // find a random number of balls to create
  numBalls = int(random(3, 20));

  // find a random spacing between the balls by multiplying by a random decimal
  spacing = (width / (numBalls + 1)) * random(0.1, 0.8);

  // find the diameter from the width of the screen, number of balls and spacing
  diameter = (width - ((numBalls + 1) * spacing)) / numBalls;

  // pick a random easing from the easings array
  ranEasing = easings[ floor(random(easings.length)) ];

  // pick a random animation time
  ranAnimationTime = random(1, 3);

  // pick a random delay time between each ball animation
  ranDelayTime = random(0, 1);

  // pick a random degree to rotate the color for every ball
  colorChangeDegree = random(1, 10);

  // find a random time in ms to stop the sketch
  ranSnap = ((ranAnimationTime + (ranDelayTime * numBalls)) * 1000) * random(0.4, 1);

  // pick a random startcolor
  TColor ranStartColor = TColor.newRandom();

  // create the balls from all these variables
  for(int i = 0; i < numBalls; i++)
  {
    float ballX = i * (diameter + spacing);
    Ball b = new Ball(ballX, diameter, diameter, ranAnimationTime, i * ranDelayTime, ranEasing, ranStartColor.copy());
    balls.add(b);
    ranStartColor.rotateRYB(colorChangeDegree);
  }
}

void draw() 
{
  background(1);

  // translate so the first ball is pushed to the right
  translate(spacing + (diameter/2), 0);

  // draw all the balls
  for(int i = 0; i < balls.size(); i++)
  {
    balls.get(i).display();
  }

  if(millis() > ranSnap)
  {
    saveFrame("easings_poster.png");
    noLoop();
  }
}
