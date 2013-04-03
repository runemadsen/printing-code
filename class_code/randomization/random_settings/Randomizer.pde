class Randomizer {

	ArrayList<Setting> settings = new ArrayList();
	ArrayList<Float> probabilities = new ArrayList();
	float sum = 0;

	Randomizer() {}

	void addSetting(Setting s, float probability)
	{
		settings.add(s);
		probabilities.add(probability);
		sum += probability;
	}

	Setting chooseSetting()
	{
		// pick a random number from the sum of all probabilities
		float result = random(sum);
		float currentSum = 0;
		
		// then loop through all choices and return when we get to our random number
		for(int i = 0; i < settings.size(); i++)
		{
			currentSum += probabilities.get(i);
			if(currentSum > result)
			{
				return settings.get(i);
			}
		}

		// we just need this because Java is stupid
		return settings.get(0);
	}

}