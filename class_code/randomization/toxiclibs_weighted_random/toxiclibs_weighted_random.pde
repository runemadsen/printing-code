import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  fill(255);

	WeightedRandomSet<Circle> circles = new WeightedRandomSet<Circle>();

	//circles.add(new Circle(1, 300, #cb4837, 3, 30), 50);
	//circles.add(new Circle(1, 100, #4a608c, 10, 0), 10);
	//circles.add(new Circle(1, 250, #f2f449, 1, 157), 20);
	
	// randomly pick 3 circles
  /*for (int i = 0; i < 3; i++){
    Circle cir = circles.getRandom();
    cir.display();  
  }*/

  //saveFrame("toxiclibs_circles.jpg");
}