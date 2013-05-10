Computational Color
===================

If you expect to come out of this class knowing simple rules like "red is for love" or "green is for happiness", you'll be extremely disappointed today. 

Color is way too subjective and dynamic to allow for so simple definitions. Actually, I'd rather stay away from telling you which colors to use when. Instead we will do 2 things:

* Learn to, simply, observe color and its characteristics.
* Learn how the ideas of color combination springs from simple rules performed on the color spectrum

<iframe width="600" height="338" src="http://www.youtube.com/embed/MXQozTxQSiE" frameborder="0" allowfullscreen data-slideshow="self"></iframe>

The woman in the red dress is a character in a training program built by the rebels in the Matrix. More specifically, [_Mouse_](http://en.wikipedia.org/wiki/List_of_minor_characters_in_the_Matrix_series#Mouse) designed her... and he picked the color red for her dress. Although many find it hard to work creatively with color, very few people would question why he chose this. It's attractive, erotic, wild and draws attention.

There are 2 reasons why I choose to show this scene:

1. The use of color in this movie is fantastic. A vague green color is used for all scenes in the Matrix. The slaves in the Matrix are dressed in gray. Scenes in the Nebuchadnezzar are tinted blue to symbolize clouds, heaven and light - the real world. Everything has a symbolic meaning, and color is used to emphasize it.

2. Once you learn to control color, you'll be like Neo moving through the Matrix. You'll see things that no one else sees.

Color is one the hardest things to master in the graphic arts, as it's both very subjective and highly dynamic (our perception of a single color change depending on what other colors we pair it with).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/itten_exchange)

Here's a quick example of how dynamic behavior color combination can have. This looks like 2 grounds where the grounds exchanged in the center squares. They are - in fact - 3 colors, where the center square is a color midways in the hue spectrum between the grounds. The eye is searching for relevance. We can prove it by removing the grounds:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_exchange2.jpg" />
	
The conclusion to this must be that color theory matters: Based on simple calculation we created an effect in the eye of the beholder.

The problem with combining color only by numbers is that you can start to trust the numbers instead of your eyes. Here's another example of why this is problematic:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/itten_example2)

In this example the small squares looks like the exact same color, but they are not even close. Because they keep a relative distance in brightness to their respective grounds, they look the same to the eye. We will investigate this further later when talking about simultaneous contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2_removed_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_example2_removed.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/itten_example2)

	
What is Color?
--------------

When you direct white light through a prism, you get a range of colors. White light holds all colors. When you mix all colors together, you get white. If you remove all colors, you get black.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/pinkfloyd_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/pinkfloyd.jpg" />
	
You know this from Processing:

<pre data-slideshow="self">
fill(255, 255, 255); // this is white
fill(0, 0, 0); // this is black
</pre>

This is why the sun turns red when setting. The atmosphere is a filter that removes colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/sunset_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/sunset.jpg" />

Color is all around us. Color express meaning. It's a natural way of communication. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/red_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/red.jpg" />


Subtractive vs. Additive Color Systems 
--------------------------------------

Let's say that you walk down to Blick and buy a beginner's painting set and mix all of the colors together in a bucket. What color will you get? - Black.

Let's say you then open a new processing sketch and mixes all colors together. What color do you get? - White.

Obviously there are 2 different ways that colors mix: by addition and by subtraction.

This is Johannes Itten's color wheel. It's built on Goethe's color wheel, and this is the wheel that most of you are familiar with. The RYB wheel.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_itten_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_itten.jpg" />
	
All colors created with paint or ink will combine in a **subtractive** way, meaning that if you mix all colors together, the resulting color will be black (pigments work by absorbing light and reflecting the remaining colors).

If you use RGB as the primary colors when painting, you cannot mix yellow. This is why RYB was chosen as primary colors, and this had a tremendous impact on color use in art.

Then there's the RGB wheel:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_rgb.jpg" />
	
All colors created with light will combine in an **additive** way, meaning that if you mix all colors together, the resulting color will be white. RGB is just one model that simulates this.

The truth is that color is a sliding spectrum, and color wheels are just basic ways of dividing this spectrum. Actually, you can use any three colors to define what's called [a color gamut](http://en.wikipedia.org/wiki/Gamut), a subset of all possible colors.

So when we talk about things like "complementary" or "opposite" color, this varies depending on your color wheel. The complementary color of "red" in the RYB color wheel is "green", but "cyan" in the RGB wheel.

Because we are working in both worlds, we are faced with a problem: we are designing on a screen that uses additive blending, but printing on a printer that uses subtractive blending. AMS solved this problem for us because the printers are optimized for the Adobe RGB 1998 color profile.


What's wrong with RGB?
----------------------

Most of you are probably totally comfortable using the RGB color mode in Processing. If we want do make a blue color, we do this:

<pre data-slideshow="self">
	fill(0, 0, 255); // this is blue
</pre>

And if we want to draw a green color we do this:

<pre data-slideshow="self">
	fill(0, 255, 0); // this is green
</pre>

But once you start doing generative color, you realize that RGB is not a good way of working. For example, here's a color. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/hsb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/hsb.jpg" />

It's really hard to move around the color spectrum in RGB. Luckily, we can change the color mode in Processing into HSB.

	
HSB Color Wheel
---------------

HSB is a color mode that makes it a lot easier to move around the color wheel. The basics of setting the color mode in Processing is this:

<pre data-slideshow="self">
	colorMode(HSB, 360, 100, 100);
	fill(0, 100, 100); // this is red
	fill(240, 100, 100); // this is blue
</pre>

We're really not talking about a color wheel, but a 3D color space, where hue, saturation and brightness has an axis each.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb.jpg" />

H (0-360) control the angle on the wheel. S (0-100) controls saturation (radius). B (0-100) controls brightness (up-down the wheel). 


Simple Colors with HSB
--------------------------------------

The first steps into working with HSB is to just draw simple colors on the screen. Here's a sketch that shows how to draw a red, green and blue square, along with some other colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/simplehsb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/simplehsb.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/hsb)

Now that we know how to move around the hue wheel, we can use this techniqe to draw a color circle.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/hsb_color_circle)

By tweaking the saturation and brightness we can make the colors less sharp.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/circle_hsb_processing2.jpg" />

Now that we know a little bit about the HSB color mode, let's generate some color schemes in Processing. 

The different ways of creating color schemes are basically just constraints to help you not float around randomly in the 3D color space. In these examples I've created a simple HSBColor class that just holds the 3 values for the color.
	

Generating Monochromatic Color Schemes
--------------------------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/monochrome_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/monochrome.jpg" />

One of the simplest possible ways of generating a color scheme is to pick a specific hue and saturation, and then choose colors that are evenly distributed on the brightness scale. This is one example of a **monochromatic color scheme**.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_brightness_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_brightness.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_brightness)
	
This sketch has an even distribution in brightness values. You can easily imagine code that choose the values randomly.

A slightly more sophisticated **monochromatic color scheme** would be to manipulate both saturation and brightness:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_saturation_brightness_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_saturation_brightness.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_saturation_brightness)

This sketch randomly chose a saturation and brightness value between 0 and 100.

Monochromatic can be used for very simple and minimalistic graphics. Often you see it used with pure black or white to create contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klm_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klm.jpg" />

This is an example of F.H.K. Herion's design for KLM Royal Dutch Airlines with a monochrome color profile.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/signs_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/signs.jpg" />

Traffic signs, here British traffic signs from the 1960's, generally have a monochromatic color profile, in order not to confuse the driver. Color is selectively used for drawing attention to important instructions.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/vitaminwater_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/vitaminwater.jpg" />

We are hip. We are trendy. We use monochromatic color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/bad_mono.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/bad_mono.jpg" />
	
Here's an example of extremely bad use of a monochromatic color scheme. The only role of the color in this graph is to connect names with lines. How can we do that when the colors are almost identical?


Going Around the Wheel in Code
------------------------------

In the next color schemes we need to move around the hue spectrum, so we need to know how to do that. One example of this would be to find the color opposite on the color wheel.

<pre data-slideshow="self">
int degree = 300;
fill(degree, 100, 100); // this is purple

int antipode = degree + 180; // yields 480, WRONG!
fill(antipode, 100, 100); // this is red, WRONG!
</pre>

However, HSB color modes do not wrap around, which means that anything below 0 and above 360 in hue will produce red. So we need to be able to find a degree between 0-360 no matter what the base hue is.

For this we can use modulo to find the remainder. Modulo is a function that finds the remainder of a division of two numbers.

<pre data-slideshow="self">
5 % 2 = quotient of 2 and a remainder of 1 = 1
9 % 3 = quotient of 3 and a remainder of 0 = 0
</pre>

In basic terms, it makes sure that we never get a higher number than the number we use for modulo.

<pre data-slideshow="self">
int degree = 300;
int antipode = (degree + 180) % 360; // yields 120, CORRECT!
fill(antipode, 100, 100); // this is green, CORRECT!
</pre>

Generating Analogous Color Schemes
----------------------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous.jpg" />

And analogous color scheme is a suit of colors that are located close to each other on the color wheel. Often this is a color located 30 degrees away from the base color hue on either side, but that degree can vary.

We rotate 30 degrees around the color wheel because the standard color wheel has 12 colors, and 360/12 is 30. We are just finding the "next" color on the wheel.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_analogous)

Of course nothing prevents you from playing with the settings. Here's an example of the same blue base color, but with neighboring colors found by rotating 50 degrees around the color wheel, and subtracting 50 from the base saturation.

The further you rotate around the wheel, the less analogous harmony you get. We can loosely say that anything below a 90 degree angle is an analogous color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_analogous2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_analogous2)

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_trees_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_trees.jpg" />

Analogous color schemes are found in nature and are often very harmonious to the eye.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_letterpress_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/analogous_letterpress.jpg" />

With the return of the letterpress greeting card in the 2000's, I've noticed an extreme use of analogous color schemes.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/weingart_analogous_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/weingart_analogous.jpg" />

Here's an example of analogous color use from Wolfgang Weingart's book about typography.


Generating Complementary Color Schemes
--------------------------------------

A complementary color is a color that exist on the opposite side of the color wheel. Older color theorists considered this to be the definition of color harmony, as complementary colors will always mix to grayish black (in paint) or grayish white (in light).

Some complementary colors are: Red = Cyan, Green = Magenta, Blue = Yellow.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/complementaries_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/complementaries.jpg" />

Look at a green square for a while, and then close your eyes. You will now see a cyan square. The eye tends to look for balance: tried to find colors that mix to white.

It's easy to find a complementary color in Processing:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_complementary)

Two examples of complementary color schemes. Notice the sharp contrast between the two colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_complementary2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_complementary2)


Generating Triadic Color Schemes
--------------------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/triadic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/triadic.jpg" />

A triadic color can be said to be the opposite of an analogous color. Where analogous colors are colors located within 90 degrees of the primary color hue, triadic colors are colors located more than 90 degrees away of the base color hue.

Here's a "pure" triadic color scheme with colors found by rotating 120 degrees on each side (internally an Equilateral triangle with 60 degree internal angles).

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_triadic)

You may notice how this is the primary colors, which makes sense given the calculation.

An interesting thing is to compare a triadic color scheme in RGB with the corresponding scheme in a subtractive color mode like RYB.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic_sub_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic_sub.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_triadic)

You may notice how the blue/yellow has a triadic relationship in RGB, but are complementary colors in RYB.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_triadic2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_triadic2)

Here's another example of a triadic color scheme with hue 90 as the base hue.


Generating Tetradic Color Schemes
--------------------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tetradic_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tetradic.jpg" />

A tetradic color scheme is a set of 4 colors chosen by placing a rectangle on the color wheel and selecting the colors that fall on the corner of the rectangle.

This color scheme is basically the same as a double complementary color scheme. Here's an example of color chosen by rotating 90 degrees around the color wheel 3 times.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_tetrad)

Notice the cold/warm contrast in this color scheme. 

However, the rectangle does not need to be equal-sided. Here's an example of a color scheme with the same base complementary pair, but with a smaller rectangle width used to pick the other complementary pair.

This increases the cold/warm contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/color_scheme_tetrad2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/color_scheme_tetrad2)

Those are the basic color scheme variations you can play with. This brings us to Itten's color contrasts.

Itten's Color Contrasts
-----------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/itten_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/itten.jpg" />

Johannes Itten Proposed 7 different contrasts that you should be looking for when using color. The idea is to be skilled in the color scale, like you can be skilled in the tonal scale:

<blockquote data-slideshow="self">
If one is not able to distinguish the difference between a higher tone and a lower tone, one probably should not make music - Josef Albers
</blockquote>

Let's go through a few of them.


Contrast of Light and Dark
--------------------------

The contrast of light and dark is very simple to understand: whenever we have two colors with a difference in brightness, a clear contrast between the two colors will exist.

The HSB color mode makes it very obvious what kind of brightness we are working with.

However computational light/dark scales are not linear. One might think that you can make a scale of equally contrasted rectangles by moving from brightness 10 to brightness 90 in steps of 10.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_wrong_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_wrong.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/contrast_lightdark_wrong)

You might notice how there's a sharp contrast between first dark rectangles, but almost no contrast between any rectangle with 60 or more in brightness.

First discovered in the so-called Weber-Fechner Law, a linear increase in brightness will distribute the contrast visually exponentially from white to black. An exponential increase in brightness will distribute the contrast linearly across all segments.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_brightness_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_brightness.jpg" />

We can of course grow our brightness exponentially in the code instead:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_right_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_lightdark_right.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/contrast_lightdark_right)

Here's an example of using an exponential increment in brightness. Notice how the contrast is much more even. Unfortunately this formula won't work in low- or high-brightness colors, but it's a good general rule.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/dada_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/dada.jpg" />

Front cover designed by Paul Rand. Notice the light-dark contrast and use of monochromatic color scheme.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/rand_sartre_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/rand_sartre.jpg" />

Another example of light-dark contrast by Paul Rand.

Contrast of Saturation
----------------------

The contrast of saturation describes the contrast that a brilliant color has towards a dull color of the same hue.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_saturation_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_saturation.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/contrast_saturation)

This is an example of 2 colors with contrast in saturation.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klee_fish_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/klee_fish.jpg" />

Here's an example of saturation contrast in the painting "Fish Magic" by Paul Klee.

Although there is also a light/dark contrast, it's specifically the brilliance of the fish contrasted to the dull background that makes it come alive.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brockmann_saturation_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brockmann_saturation.jpg" />

Josef Muller-Brockmann uses saturated color boxes in contrast with the gray background.

Contrast of Hue
---------------

The contrast of hue describes the contrast between different color hues. The bigger the distance in hue, the bigger the contrast.

A pure triadic color scheme is the extreme instance of hue contrast.

Contrast of hue is extremely expressive, especially in brilliant colors.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue.jpg" />

Here's an example of a strong contrast of hue, using full saturated colors and black+white.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/itten_hue2.jpg" />

Removing black+white and adding colors closer to each other diminishes the hue contrast.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/book_hue_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/book_hue.jpg" />

As "pure" colors were the first ink-based colors, uses of contrast of hue can be traced back to the early books of the middle ages:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/mondrian_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/mondrian.jpg" />

Mondrian uses color hues, but with less saturation.


Cold / Warm Contrast
--------------------

It's important to realize the dynamic nature of the cold/warm contrast. People tend to think that "red" is warm and "blue" is cold. As proved by Albers, here's an example of how extremely fragile that balance is.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/albers_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/albers_example)


Contrast of Extension
---------------------

> "He who first draws lines and then add color will never succeed in producing a clear, intense color effect [...] Color have dimensions and directionality of their own" - Johannes Itten

Itten's contrast of extension relates to the fact that different colors do not have the same perceived volume. If a yellow rectangle and a purple rectangle are set side by side, the yellow rectangle appears much bigger.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_white_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_white.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/contrast_extension_white)

This "contrast of extension" varies depending on the background color, neighbor colors, and arrangement.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_black_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_black.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/contrast_extension_black)

Goethe and later Itten proposed the following extension values for colors:

* Yellow: 9
* Orange: 8
* Red: 6
* Violet: 3
* Blue: 4
* Green: 6

Here's those numbers visualized. Notice how balanced this color wheel is compared to Itten's normal color wheel with constant color sizes.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_itten_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_itten.jpg" />

And a simple processing sketch that calculates ratio between 2 color pairs using those extension values.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_ratios_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/contrast_extension_ratios.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/contrast_extension_ratios)

Of course this is a very basic treatment on the fact that colors have different volumes. It could be nice to have a constant to apply in code, but it varies greatly with the background and matching colors. In the end it's a test for your visual perception.


How to Find Opposite Brightness
-------------------------------

For generative drawings we often want to [calculate the perceived brightness](http://www.nbdtech.com/Blog/archive/2008/04/27/Calculating-the-Perceived-Brightness-of-a-Color.aspx) of a color to be able to choose a font or shape color to draw on top of it. This is especially useful when working with random colors.

We do this by using a weighted formula that calculates the perceived brightness of a color. We use that brightness approximation to choose the brightness of the overlay color.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/brightness_perceived2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/opposite_brightness)


Toxiclibs
---------

Now that we know how color works in Processing, we can take a look at the Toxiclibs library. Toxiclibs ships with an awesome set of classes that can drastically help you generate and manipulate colors in Processing. 

Before using the ToxicLibs library in Processing, you will need to change the colormode. All color numbers in Toxiclibs operate in a scale from 0 to 1 (normalized), instead of 0-255 as you're used to. This may seem weird at first, but makes it a lot easier when doing calculations.

This example shows how to use colormode in Processing.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colormode_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colormode.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_colormode)

**TColor** is the most important color class in the library, because it's a replacement of the native color object in Processing. It has many advantages over the normal color mode:

<ul data-slideshow="self">
	<li>Automatically converts between colormodes</li>
	<li>Has a bunch of handy functions to change color (contrast, saturation, etc)</li>
	<li>Implements compare methods so you can eaisly say: "Give me the darkest color" in this array</li>
	<li>Soooooo much more</li>
</ul>

This sketch shows you how to create a new TColor object. You can do this in many ways, as shown in the code:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tcolor_simple_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tcolor_simple.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_tcolor_simple)

Here's a more complex example that shows you how to use some of the color manipulation functions, to change the color in code.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tcolor_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/tcolor.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_tcolor)

**ColorList** is another great class. It's basically an array that can hold multiple *TColor* objects, and perform operations on them.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorlist_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorlist.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_colorlist)

**ColorRange** is a class you can use to make random colors, from a subset of the color wheel. You pick the general bounds, and whenever you call getColor() on the object, it will give you back a random color without those bounds. Here's a sketch that shows you how to use it.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorrange_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorrange.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_colorrange)

Besides those basic classes, there's a number of more advances classes you can use. **ColorTheme** is one of them. A ColorTheme is basically an array of _ColorRange_ objects, that when you run the _getColors()_ function on it, will run through all the _ColorRange_ objects, get a random color, and return an array of random TColors. It's a great way of creating a custom color theme from a bunch of color ranges.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colortheme_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colortheme.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_colortheme)

Probably the most sophisticated of the color classes is the **ColorTheory** class. Remember all those different color theories we went through in the beginning of the class? The _ColorTheory_ class allows you to create them easily in code. Here's a simple example that demonstrates how to create a bunch of colors from a _ColorTheory_.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colortheory_simple_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colortheory_simple.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_colortheory_simple)

Here's a more advanced example showing all of the color theories in action.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorthemes_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/colorthemes.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_colortheory)

Toxiclibs also has a class for generating gradients.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/gradient_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/color/gradient.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/color/toxiclibs_gradient)