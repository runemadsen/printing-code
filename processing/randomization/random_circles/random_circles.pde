Randomizer ran;

void setup()
{
  size(1280, 800);
  background(30); 
  smooth();
  noFill();
  
  // create a randomizer
  ran = new Randomizer();

  // now create a range of setting objects
  ran.addSetting( new Setting(300, #cb4837, 3, 30), 1);
  ran.addSetting( new Setting(100, #4a608c, 10, 0), 2);
  ran.addSetting( new Setting(250, #f2f449, 1, 157), 3);

  // randomly pick 3 Settings
  for (int i = 0; i < 3; i++){
    Setting set = ran.getRandom();
    set.display();  
  }
}