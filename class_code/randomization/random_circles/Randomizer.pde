class Randomizer {

	ArrayList<Setting> circles = new ArrayList();
	ArrayList<Float> probabilities = new ArrayList();
	float sum = 0;

	Randomizer() {}

	void addSetting(Setting c, float probability)
	{
		circles.add(c);
		probabilities.add(probability);
		sum += probability;
	}

	Setting getRandom()
	{
		// pick a random number from the sum of all probabilities
		float result = random(sum);
		float currentSum = 0;
		
		// then loop through all choices and return when we get to our random number
		for(int i = 0; i < circles.size(); i++)
		{
			currentSum += probabilities.get(i);
			if(currentSum > result)
			{
				return circles.get(i);
			}
		}

		// we just need this because Java is stupid
		return circles.get(0);
	}

}