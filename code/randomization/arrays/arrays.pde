Hexagon[] hexagons;

void setup()
{
  size(1280, 800);
  smooth();
  
  // first create an array that can hold 50 hexagon objects
  hexagons = new Hexagon[50];

  // then actually create 50 hexagons
  for (int i = 0; i < 50; i++)
  {
    hexagons[i] = new Hexagon(random(width), random(height), 50);  
  }
}

void draw()
{
  background(255); 
  
   // and then display them
  for (int i = 0; i < hexagons.length; i++){
    hexagons[i].display();
  }
}