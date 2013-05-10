Vectors and Randomization
=========================

In this class we'll investigate the concept of randomization.


Using Random
------------

One of the first things you learn in Processing, is to use the random() function. Here's a very simple example where I'm choosing a random stroke for 3 circles.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simplest_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simplest.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_simplest)

But random() can be used for much more than that. We can imagine that we want to be able to randomly stroke the circle with 2 different colors. Here's a sketch that does exactly that:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_simple)

The important thing here is that we can specifically say how much probability we want for the two colors to show. But what if we want to have several different colors, with a specific probability to be chosen? This is called weighted randomness, and can be coded pretty easily by using ArrayLists.


ArrayLists
----------

Before diving into weighted randomness, we need to talk about ArrayLists. In your code you often you arrays, which can hold a list of multiple objects. The problem with arrays is that their length is static, which means that you need to know the length of the array beforehand.

Let's imagine that I want to draw 50 Hexagon objects on the screen. Arrays are great for this:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arrays_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arrays.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/arrays)

But what if you want to add more hexagons to the array at a later time? For example, what if you want the add a hexagon on the screen where the user presses the mouse? Then you need a kind of flexible array that can get bigger and smaller on the fly. That's what an ArrayList is! 

Take a look at this example that implements the exact same code using ArrayLists, and also implements the mouse clicks, so you can add more hexagons to the array(list)

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arraylists_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/arraylists.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/arraylists)


Weighted Randomness
-------------------

Let's say that we want our sketch to choose between 3 different colors: Red, Green and Blue. Each color should have a specific probability to be chosen. You might imagine that we could do something like this:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_simple2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_simple2)

As you can see, every single color requires an if-statement. The question is, isn't there a better way? Yes, there is. Here's the exact same sketch, but with a Randomizer class that can hold a lot of colors and probabilities.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_class)

But this code only works with colors. What if we have more values we want to randomly choose? Here's an example where I have a custom *Settings* class, where each settings object holds a bunch of values.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_settings_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_settings.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_settings)

See how clean that code is compared to a bunch of if statements with random function calls in them? We could even go as far as to put a display() function in the setting class. This example shows you why.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_circles.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_circles)


Toxiclibs: Weighted Randomness
------------------------------

If you don't want to code this by yourself, Toxiclibs ships with a nice WeightedRandom class. Here's the simple color example, using Toxiclibs.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_class.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_weighted_random)

And here's our Setting example, using Toxiclibs.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_circles.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_circles)


Perlin Noise
------------

Here's an example of how noise() is different than random(). As you can see, the values are much more organic, though still random.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_vs_noise_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/random_vs_noise.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/random_vs_noise)

When a Processing sketch loads, it will choose a random noiseSeed for the perlin noise. This means that your lines will look different every time the program runs. After launching, the noiseSeed is stable, so all lines using the same noise will look the same (if given the same counter). You can use noiseSeed to change this:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_seed_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_seed.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_seed)

You can manipulate the octaves and falloff via the noiseDetail function.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_detail_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_detail.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_detail)

Perlin Noise can be used to do many things. One of things that it's great for is introducing a more organic feel into your sketches. Here's a sketch with a circle drawn with Perlin Noise.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_organic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_organic.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_organic)

It's quite easy to draw a circle with Perlin noise, but forming many straight lines into a form can be hard. Here's an example of how you can create your own line function that draw a line with Perlin Noise:

Another thing Perlin Noise can be used for, is to create gradient surfaces with an organic look. Here's a Processing sketch that uses Perlin noise in 2 dimensions:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_surface_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/noise_surface.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/noise_surface)


ToxicLibs: Other Classes
------------------------

FloatRange! Yeah!
