class Randomizer {

	ArrayList<Setting> settings = new ArrayList();
	float sum = 0;

	Randomizer() {}

	void addSetting(Setting s)
	{
		settings.add(s);
		sum += s.percentage;
	}

	Setting chooseSetting()
	{
		// pick a random number from the sum of all
		float result = random(sum);

		// then find the choice from the random result
		sum = 0;
		int chosenIndex = 0;
		
		for(int i = 0; i < settings.size(); i++)
		{
			sum += settings.get(i).percentage;
			if(sum > result)
			{
				chosenIndex = i;
				break;
			}
		}

		return settings.get(chosenIndex);
	}

}