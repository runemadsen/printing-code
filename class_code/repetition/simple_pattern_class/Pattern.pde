class Pattern
{
	PVector loc;
	PVector area;
  int siz;
  int margin;
  int lineWidth;
  int spacing;

	Pattern(int _x, int _y, int _w, int _h, int _siz)
	{
		loc = new PVector(_x, _y);
		area = new PVector(_w, _h);
		siz = _siz;
		margin = siz / 5;
  	lineWidth = int(siz / 8);
  	spacing = int(siz * 0.8);
	}

	void display()
	{
		translate(loc.x, loc.y);

		for(int x = 0; x < area.x; x += spacing)
		{
			for (int y = 0; y < area.y; y += spacing)
			{
				pushMatrix();
		  	translate(x, y);
	
		  	fill(200, 130, 115);
		  	ellipse(0, 0, siz, siz);
	
		  	fill(180, 180, 180);
		  	ellipse(0, 0, siz * 0.8, siz * 0.8);
	
		  	fill(50, 50, 50);
		  	ellipse(0, 0, siz * 0.3, siz * 0.3);
	
		  	popMatrix();
			}
		}
	}
}