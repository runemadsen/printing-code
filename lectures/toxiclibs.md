Toxiclibs
---------

Often when you generate random forms, you need the ability to manipulate the outline of the form. For example, here I generate a line with beginShape using 5 random points

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_1.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

Now, let's say I want to divide that line up into more segments. Toxiclibs ships with a nice Spline class that can do this for you. Here is the exact same code, but using the spline class to get double the points from the same 5 random points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

Here we divide each point into 10 smaller points, with a distance based on the curve of the original 5 points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

You can use the getDecimatedVertices() function to get points with equal distance to each other.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_4.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

And with a little bit of fun randomness, we can create a wobbly line from those points.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/toxiclibs_splines_5.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/toxiclibs_splines)

	Ray2D

	Other - check examples!

There's a ton of interesting features in toxiclibs, and if you're interested, check the "examples" folder.

* toxiclibs perlin noise 3D
* toxiclibs Spline3D
* all other 3D toxiclibs stuff
* USE TOxiclibs mesh class and example: BezierPatchSimple