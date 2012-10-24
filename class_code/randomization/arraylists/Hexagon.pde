class Hexagon
{
	float x;
	float y;
	float r;

	Hexagon(float _x, float _y, float _r)
	{
		x = _x;
		y = _y;
		r = _r;
	}

	void display()
	{
		noFill();
		stroke(30);
		pushMatrix();
		translate(x, y);
		beginShape();
		for(int i = 0; i < 5; i++)
		{
			float x = cos(radians(i * (360/5))) * r;
			float y = sin(radians(i * (360/5))) * r;
			vertex(x, y);
		}
		endShape(CLOSE);
		popMatrix();
	}
}