class Ball
{
	PVector pos;
	float diameter;
	Ani animation;
	float delayTime;
	TColor col;

	Ball(float ballX, float ballY, float _diameter, float animationTime, float delayTime, Easing easing, TColor _col)
	{
		pos = new PVector(ballX, ballY);
		diameter = _diameter;
		col = _col;

		// create the animation. It will start right away
		animation = new Ani(pos, animationTime, delayTime, "y", height - diameter, easing);
	}

	void display()
	{
		fill(col.hue(), col.saturation(), col.brightness());
  	ellipse(pos.x, pos.y, diameter, diameter);
	}
}