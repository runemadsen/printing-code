ArrayList<Hexagon> hexagons;

void setup()
{
  size(1280, 800);
  smooth();
  
  // first create an array that can hold 50 hexagon objects
  hexagons = new ArrayList();

  // then actually create 50 hexagons
  for (int i = 0; i < 50; i++)
  {
    hexagons.add(new Hexagon(random(width), random(height), 50));  
  }
}

void draw()
{
  background(255); 
  
   // and then display them
  for (int i = 0; i < hexagons.size(); i++){
    hexagons.get(i).display();
  }
}

void mousePressed()
{
  hexagons.add(new Hexagon(mouseX, mouseY, 50));  
}