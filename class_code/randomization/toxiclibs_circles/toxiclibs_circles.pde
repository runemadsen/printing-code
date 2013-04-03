import toxi.util.datatypes.*;

void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  noFill();

	WeightedRandomSet<Setting> ran = new WeightedRandomSet<Setting>();

	ran.add(new Setting(300, #cb4837, 3, 30), 1);
	ran.add(new Setting(100, #4a608c, 10, 0), 2);
	ran.add(new Setting(250, #f2f449, 1, 157), 3);

	// randomly pick 3 Settings
  for (int i = 0; i < 3; i++){
    Setting set = ran.getRandom();
    set.display();  
  }
}