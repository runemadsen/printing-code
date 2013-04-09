import geomerative.*;

ArrayList<Flower> flowers = new ArrayList<Flower>();

void setup() 
{
  size(1280, 800); 
  smooth();
  background(255);
  noFill();
  strokeWeight(2);

  RG.init(this);

  // loop through and create a bunch of flowers
  for(int i = 0; i < 30; i++)
  {
    flowers.add( new Flower() );
  }

  translate(350, height);

  // then loop through the flowers and display them
  // we could have done that in the same loop, but
  // not if you need to display them in the draw loop later
  for(int i = 0; i < flowers.size(); i++)
  {
    Flower myFlower = flowers.get(i);
    myFlower.display(i * 20, 0);
  }
}