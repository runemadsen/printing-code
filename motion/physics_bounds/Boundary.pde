class Boundary 
{  
  float x;
  float y;
  float r;
  
  Body b;
  ArrayList<Vec2> surface;
  
  /* Constructor
  ____________________________________________________________________ */
  
  Boundary(float x_,float y_) 
  {
    x = x_;
    y = y_;
    
    surface = new ArrayList<Vec2>();

    ChainShape chain = new ChainShape();
    for(int i = 0; i < 10; i++)
    {
      float xPos = i * 50;
      float yPos = sin(radians(i * 30)) * 50;
      surface.add(new Vec2(x + xPos, y + yPos)); 
    }

    Vec2[] vertices = new Vec2[surface.size()];
    for (int i = 0; i < vertices.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(surface.get(i));
      vertices[i] = edge;
    }
    
    chain.createChain(vertices,vertices.length);

    BodyDef bd = new BodyDef();
    bd.type = BodyType.STATIC;
    bd.position.set(0.0f,0.0f);
    Body body = box2d.createBody(bd);
    
    body.createFixture(chain, 1); 
  }
  
  /* Display
  ____________________________________________________________________ */
  
  void display()
  {
    strokeWeight(2);
    stroke(0);
    noFill();
    beginShape();
    for (Vec2 v: surface) {
      vertex(v.x, v.y);
    }
    endShape();
  }
}