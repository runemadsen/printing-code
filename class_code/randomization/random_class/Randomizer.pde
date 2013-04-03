class Randomizer {

	ArrayList<Integer> values = new ArrayList();
	ArrayList<Float> probabilites = new ArrayList();
	float sum = 0;

	Randomizer() {}

	void addChoice(Integer value, float probability)
	{
		values.add(value);
		probabilites.add(probability);
		sum += probability;
	}

	Integer getRandom()
	{
		// pick a random number from the sum of all probabilities
		float result = random(sum);
		float currentSum = 0;
		
		// then loop through all choices and return when we get to our random number
		for(int i = 0; i < values.size(); i++)
		{
			currentSum += probabilites.get(i);
			if(currentSum > result)
			{
				return values.get(i);
			}
		}

		// we just need this because Java is stupid
		return 0;
	}

}