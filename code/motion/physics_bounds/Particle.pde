class Particle 
{
  Body body;
  float w;
  float h;
  
  /* Constructor
  ____________________________________________________________________ */

  Particle(float x, float y) 
  {
    int s = round(random(10, 30));
    w = s;
    h = s;

    makeBody(new Vec2(x, y), w, h);
  }
  
  /* Display
  ____________________________________________________________________ */

  void display()
  {
    Vec2 pos = box2d.getBodyPixelCoord(body);
    
    float a = body.getAngle();
    
    rectMode(CENTER);
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    fill(30);
    noStroke();
    rect(0, 0, w, h);
    popMatrix();
  }

  /* Remove dead ones
  ____________________________________________________________________ */
  
  boolean done() 
  {
    Vec2 pos = box2d.getBodyPixelCoord(body);

    if (pos.y > height+w*h)
    {
      killBody();
      return true;
    }
    
    return false;
  }
  
  void killBody() 
  {
    box2d.destroyBody(body);
  }

  /* Make body
  ____________________________________________________________________ */
  
  void makeBody(Vec2 center, float w_, float h_) 
  {
    // Define a polygon (this is what we use for a rectangle)
    PolygonShape sd = new PolygonShape();
    float box2dW = box2d.scalarPixelsToWorld(w_/2);
    float box2dH = box2d.scalarPixelsToWorld(h_/2);
    sd.setAsBox(box2dW, box2dH);

    // Define a fixture
    FixtureDef fd = new FixtureDef();
    fd.shape = sd;
    // Parameters that affect physics
    fd.density = 1;
    fd.friction = 0.3;
    fd.restitution = 0.5;

    // Define the body and make it from the shape
    BodyDef bd = new BodyDef();
    bd.type = BodyType.DYNAMIC;
    bd.position.set(box2d.coordPixelsToWorld(center));

    body = box2d.createBody(bd);
    body.createFixture(fd);
  }
}