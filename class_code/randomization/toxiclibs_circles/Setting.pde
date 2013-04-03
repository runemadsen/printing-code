class Setting
{
	int radius;
	int kolor;
	int strokeThickness;
	int rotation;

	Setting(int _radius, int _kolor, int _strokeThickness, int _rotation)
	{
		radius = _radius;
		kolor = _kolor;
		strokeThickness = _strokeThickness;
		rotation = _rotation;
	}

	void display()
	{
  	pushMatrix();
  	stroke(kolor);
  	translate(width/2, height/2);
  	rotate(radians(rotation));
  	strokeWeight(strokeThickness);
  	ellipse(0, 0, radius * 2, radius * 2);
  	line(-radius, 0, radius, 0);
  	popMatrix();
	}
}