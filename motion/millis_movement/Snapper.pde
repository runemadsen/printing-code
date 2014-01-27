class Snapper
{
	float chosenTime;
	FloatRange range;

	Snapper(float minTime, float maxTime)
	{
		range = new FloatRange(minTime, maxTime);
		chosenTime = range.pickRandom();
	}

	void tick()
	{
		if(millis() > chosenTime)
  	{
  	  saveFrame("millis_movement.png");
  	  noLoop();
  	}
	}
}