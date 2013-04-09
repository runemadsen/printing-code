class Flower
{
	RPoint direction;
	float length;

	Flower()
	{
		// find random direction. flowers grow up which means minus!
		direction = new RPoint(random(-0.3, 0.3), -1);
		
		// find a random length, and scale the vector
		length = random(200, 500);
		direction.scale(length);
	}

	void display(float x, float y)
	{
		// draw starting point
		noStroke();
		fill(30);
		ellipse(x, y, 10, 10);

		// draw flower line
		stroke(0);
		noFill();
		line(x, y, x + direction.x, y + direction.y);

		// draw flower head using length to determine size
		fill(240);
		ellipse(x + direction.x, y + direction.y, length / 10, length / 10);
	}
}