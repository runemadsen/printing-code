Randomization Homework
======================

In these short examples, I'll show how I would solve this week's homework, with a little help from Geomerative. First of all, here's the thing we're trying to recreate.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/other/pintori5.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/other/pintori5.jpg" />

Here's the most basic sketch, in black and white, that demonstrates how to use vectors and perlin noise to calculate the positions of the triangles.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/homework/randomization_simplest_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/homework/randomization_simplest.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/homework/randomization_simplest)

Here we add colors with Colorlist and TColor.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/homework/randomization_simple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/homework/randomization_simple.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/homework/randomization_simple)

In the examples above, there are 2 problems: 1) The colors in the original work is not created by overlaying two triangles with different opacity 2) The shapes are going straight up in the air, and not rotating.

This is solved in this (more complicated sketch) by using 3 different colors and 3 triangles, and calculating their placement using Geomerative's RShape. This is primarily to calculate the centroid of the shape.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/homework/randomization_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/homework/randomization.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/homework/randomization)