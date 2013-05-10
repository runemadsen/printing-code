Transformation
==============

<blockquote data-slideshow="self">
Transformation refers to the fact of manipulating a preexisting form to create something new - Form+Code
</blockquote>

In this class we'll look at transformations in Processing, especially picel manipulation and how it relates to repetition.

Transformation in Graphic Design
--------------------------------

Tomoko Miho, Architecture in Chicago

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/miho_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/miho.jpg" />

Adam Harvey's Spam Art

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/spamart1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/spamart1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/spamart2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/spamart2.jpg" />

Jonathan Puckeys graphic image filters

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/puckey_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/intro/puckey.jpg" />


Bits and Bytes
--------------

Before diving into pixel iteration, we have to know a little bit about pixel color values.

Have you ever thought about why color values always go to 255? Take a look at the color palette in Photoshop.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/photoshop_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/photoshop.jpg" />

... or take a look at color values in Processing. It's all 0-255. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/processing_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/processing.jpg" />

It all comes down to the basic way a computer works. You've probably heard that a computer can only think in ones and zero's. This means that all your data is just a bunch of zeros ...

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bit0_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bit0.jpg" />

... and ones ...

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bit1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bit1.jpg" />

... saved on your harddisk. This is called a **Bit**. A computer will always group these bits into groups of 8, called a **Byte**.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount0_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount0.jpg" />

You can count in the binary numeral system exactly like you can count in the Arabic number system. Here's how.

**0** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount0_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount0.jpg" />

**1** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount1.jpg" />

**2** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount2.jpg" />

**3** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount3.jpg" />

**4** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount4.jpg" />

**5** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount5.jpg" />

**6** 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount6.jpg" />

... and so on. If you count all the up, so you fill the byte with 1's, you'll end up with the number 255.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount255_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/bitcount255.jpg" />

That's why you see the number 255 used for colors. It's the highest number that can fit in one byte. If you want to test this for yourself, you can use the binary() function in Processing to convert a number to its byte representation.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/processing2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/processing2.jpg" />

When we manipulate pixels, we're essentially pulling out these byte values from the image files and manipulating them by either changing them directly in the image pixels, or using the color values to draw something on the screen.


Pixel Iteration
---------------

Looping over an image pixels in RGB color mode.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/loop_rgb)

Looping over an image pixels in HSB color mode.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/loop_hsb)


Pixel Iteration with Bitshifting
--------------------------------

You might experience that these color functions are super slow. Now that we know about bites, we can use a tehnique called bitshifting to get the color values. This is a much faster way of getting pixel colors, and even though it looks a little cryptic, it's somehow simple.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/loop_rgb_bitshifting)

Bitshifting is much, much faster than using the color functions, however, it will always return values in RGB. Here's an example of how to use bitshifting in HSB colormode with the Toxiclibs TColor class.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/loop_rgb.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/loop_hsb_bitshifting)


Pixel Manipulation
------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_invert_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_invert.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/manipulate_invert)

This is a very simple example, because we just invert the color. However, if we want to manipulate the individal colors, we know that HSB is a much better colormode. Here's an example of how to manipulate the colors by spinning around the HSB wheel.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_tcolor_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_tcolor.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/manipulate_tcolor)

Now that we're in Toxiclibs land, we can do all sorts of cool things. For example, here's an example of changing the pixels in an image to the closest color in a Colorlist.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_colorlist_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_colorlist.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/manipulate_colorlist)

There's also a great Histogram class in the Toxiclibs library that allows you to get a list of colors in an image. Here's the exact same example using a histogram to get a colorlist based on the picture.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_histogram_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_histogram.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/manipulate_histogram)

Of course you can do other fun stuff with the histogram, like drawing a background with colors based on the colors in the image.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_histogram_bg_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/manipulate_histogram_bg.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/manipulate_histogram_bg)


From Pixels to Shapes
---------------------

Now that we have the ability to manipulate pixels form an image, let's investigate what we can create if we don't just update the pixel values, but use those values to draw shapes on the screen instead.

Here's an example of using our basic tile pattern from last class, but extracting the pixel values from the image:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/pixels_triangles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/pixels_triangles.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/pixels_triangles)

Here's an example where we're taking last weeks cube pattern and using the pixel values to determine the color of the cubes:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/cube_pattern_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/transformation/cube_pattern.png" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/transformation/cube_pattern)