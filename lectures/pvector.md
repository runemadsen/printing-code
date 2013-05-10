Vectors
=======

The basic concept of a vector is that it's a simple class that has a "x" and "y" property. Processing has a built-in class called PVector that you can use out of the box. Dan Shiffman has a ton of material on this, so I won't go that much into detail (you can [read about it on his website](http://natureofcode.com/book/chapter-1-vectors/)). 

What's important to us in this class is how we can use vectors to represent individual points on the screen. These can be used to create outlines or closed shapes. Here's an example that demonstrates how to draw a line with normal variables AND with PVector.
 
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/vectors)

What you start to realize is that a vector is actually a description of a direction. For example, a single vector can describe a length of a line. Here's an example of what I mean by that. Also notice how the PVector class has a bunch of cool features, including subtracting and adding vectors to each other. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors_subtraction_small.png" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/randomization/vectors_subtraction.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/randomization/vectors_subtraction)

The toxiclibs library ships with its own vector class called Vec2D, which basically behaves in the exact same way as PVector, but with a lot of added functionality. The Geomerative libary ships with its own vector class called RPoint. It's confusing, because they basically do the same thing. This is how you would convert between the classes:

	// get an RPoint from a PVector
	PVector p1 = new PVector(100, 60);
	RPoint p2 = new RPoint(p1.x, p1.y);

	// the same applies for Vec2D
	Vec2D p3 = new Vec2D(p1.x, p1.y);