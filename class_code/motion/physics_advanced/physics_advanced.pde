import pbox2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

/*  Properties
_________________________________________________________________ */

PBox2D box2d;
Boundary bound;
ArrayList<Particle> particles;

boolean fall = true;
boolean showBound = true;

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1280, 800);
  smooth();
  
  box2d = new PBox2D(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);

  particles = new ArrayList<Particle>();
  bound = new Boundary(width/2, height/2, width/4, 270, -45);
}

/*  Draw
_________________________________________________________________ */

void draw() 
{
  background(255);
  
  box2d.step();

  if (random(1) < 0.2 && fall) {
    Particle s = new Particle(random(width), 0);
    particles.add(s);
  }
  
  if(showBound)
  {
    bound.display();
  }
  
  // Display all the boxes
  for(int i = 0; i < particles.size(); i++)
  {
    particles.get(i).display();
  }
  
  // Boxes that leave the screen, we delete them
  // (note they have to be deleted from both the box2d world and our list
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle s = particles.get(i);
    if (s.done()) {
      particles.remove(i);
    }
  }
}

/*  Keypressed
_________________________________________________________________ */

void keyPressed()
{
  // save image on s
  if(key == 'f')
  {  
    fall = !fall;
  }
  else if(key == 'b')
  {
    showBound = !showBound;
  }
  else if(key == 's')
  {
    saveFrame("physica_advanced_" + year() + "_" + month()+ "_" + day() + "_" + hour() + "_" + minute() + "_" + second() + ".png");
  }
}