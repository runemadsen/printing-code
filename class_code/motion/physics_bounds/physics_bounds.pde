import pbox2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;

/*  Properties
_________________________________________________________________ */

PBox2D box2d;
Boundary boundary;
ArrayList<Particle> particles;

/*  Setup
_________________________________________________________________ */

void setup()
{ 
  size(1280, 800);
  smooth();
  
  box2d = new PBox2D(this);
  box2d.createWorld();
  box2d.setGravity(0, -10);

  boundary = new Boundary(width/2, height/2);
  particles = new ArrayList<Particle>();
}

/*  Draw
_________________________________________________________________ */

void draw() 
{
  background(255);
  
  box2d.step();

  boundary.display();
  
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

/*  Mouse Pressed
_________________________________________________________________ */

void mousePressed()
{
  particles.add( new Particle(mouseX, mouseY) );
}