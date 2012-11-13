class Pattern
{
	PVector loc;
	PVector area;
	
	float a;
	float b;
	float c;
	float d;

	Pattern(int _x, int _y, int _w, int _h, int _siz)
	{
		loc = new PVector(_x, _y);
		area = new PVector(_w, _h);

		a = _siz;
		b = _siz * 2;
		c = _siz * 3;
		d = _siz * 4;
	}

	void display()
	{
          translate(loc.x, loc.y);
	  for(float y = 0; y <= area.y; y += c) 
	  {
	    for(float x = 0; x <= area.x; x += d)
	    {
	      pushMatrix();
	      if((y/c) % 2 == 0)  translate(x - b, y);
	      else            translate(x, y);

	      fill(5, 133, 170);
	      quad(0, -c, b, -b, 0, -a, -b, -b);
	      fill(1, 40, 76);
	      quad(-b, -b, 0, -a, 0, a, -b, 0);
	      fill(155);
	      quad(b, -b, b, 0, 0, a, 0, -a);

	      popMatrix();
	    }
	  }
	}
}
