class Randomizer {

	ArrayList<Choice> options = new ArrayList();

	Randomizer() {}

	/*	Simple function to get a yes / no
	_________________________________________________________ */

	boolean decide(float percentage)
	{
		return random(1) > percentage;
	}

	/*	More advanced function to select an option
	_________________________________________________________ */

	void addChoice(String name, float percentage)
	{
		options.add(new Choice(name, percentage));
	}

	String makeChoice()
	{
		// first get sum of all choices
		float sum = 0;
		for(int i = 0; i < options.size(); i++)
		{
			sum += options.get(i).percentage;
		}

		// pick a random number from the sum of all
		float result = random(sum);

		// then pick a choice from the random result
		sum = 0;
		String nameResult = "";
		for(int i = 0; i < options.size(); i++)
		{
			sum += options.get(i).percentage;
			if(sum > result)
			{
				nameResult = options.get(i).name;
				break;
			}
		}

		return nameResult;
	}

}