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
  ran.addSetting( new Setting(1, 300, #cb4837, 3, 30) );
  ran.addSetting( new Setting(1, 100, #4a608c, 10, 0) );
  ran.addSetting( new Setting(1, 250, #f2f449, 1, 157) );

  // randomly pick a setting
  Setting setting = ran.chooseSetting();

  // use setting to draw the circle shape
  stroke(setting.kolor);
  translate(width/2, height/2);
  rotate(radians(setting.rotation));
  strokeWeight(setting.strokeThickness);
  ellipse(0, 0, setting.radius * 2, setting.radius * 2);
  line(-setting.radius, 0, setting.radius, 0);
  
  saveFrame("random_settings.jpg");
}