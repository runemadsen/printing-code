What is a grid system?
======================

There is nothing worse for an artist than a blank canvas. A grid system is a set of measurements a graphic designer can use to align and size objects within the given format. Although there are a few different categories of grid systems, there are no strict rules on what can or cannot be a grid. It's up to you. Any guides that help you shape the final design is okay.

Relevant for us is how the grid is such a strict mathematical concept. It's perfect for manipulation in code. The traditional way of creating a grid is by doing it by hand in Photoshop or Illustrator. If you suddenly notice that you want a slimmer grid, you need to re-create the grid and move everything by hand. In code this is not the case, a we can be extremely flexible and try many iterations within minutes. It also allows us to use several grid systems on top of each other, distort the grid system by rotating or scaling it, or generating the grid modules randomly. 

The concept of a generative grid system is extremely powerful, but also extremely underused. Even a simple thing like a flexible grid program is non-existent today. 

Today we'll go through the different types of grid systems, look at interesting examples, and look at how we can create and manipulate grid systems in code. If you feel like it, read [this brief introduction to the history of grid](http://www.graphics.com/modules.php?name=Sections&op=viewarticle&artid=620).

A grid system is any kind of basic constraint you can put on the canvas.

Measurements, Measurements
--------------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/apple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/apple.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/mondrianRULES_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/mondrianRULES.jpg" />


History of Grid Systems
-----------------------

Grid systems started as helper lines for written books.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory1.jpg" />

It transferred to movable type, where the type setting itself consists of a grid. The grid lines continued to help printers in typesetting. This could often be as simple as a baseline that determined the scale of the headings and body.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory2.jpg" />

With the industrial revolution came a huge demand for printed works. Many things, like slab-serif fonts, were concieved as a part of the advertising revolution. A grid system is here used to divide page space up into smaller segments, to use for advertising. The bigger the space, the more money the ad would cost.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory3.jpg" />

Movements like the Bauhaus and the Futurists investigated the use of grid systems, and how to play within these constraints. Here it's a page from the futurist magazine Lacerba.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gridhistory4.jpg" />

The masters of the grid system - Swiss Style designers like Brockmann and Gerstner.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/brockmann_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/brockmann.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/swiss_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/swiss.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/swiss2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/swiss2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner.jpg" />

Images found from <a href="http://www.graphics.com/modules.php?name=Sections&op=viewarticle&artid=620">this post</a>.


Types of Grids
--------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript.jpg" />

A **manuscript grid** is the most basic form of a grid. It is made up by a single rectangle that defines the margins of the format.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column.jpg" />

A **column grid** is what it says. It splits the page into columns, and is probably the most used grid type. Libraries like blueprint and 960.gs have ported the ideas of the column grid to the web. 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular.jpg" />

The **modular grid** is a column and row grid that not only tells you the x-placements of your forms, but also guides on the y-axis.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_hierarchical_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_hierarchical.jpg" />

The last type of grid is often called a **hierarchical grid**, although it's kind of a "catch all" for grids that do not fit into the above categories. A hierarchical grid is described by not having equal spacing between modules.


Grid Examples
-------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/brockmanngrid_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/brockmanngrid.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/brockmanngrid2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/brockmanngrid2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid1.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid3.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid5.jpg" />


Using a Grid
------------

The grid systems were made popular with the wave of Swiss Style graphic design. The point is to work creatively within the grid, but also break free when you need it.

Even a simple grid gives you a lot of variety in placing your content. You use the modules as basis for larger content areas. This creates alignment and balance in your design.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_filled3.jpg" />


Int vs. Float
-------------

Before we start diving into code examples, we need to clarify a simple thing about calculations in Processing. When we work with division of larger numbers into smaller numbers, it's important always to use floats instead of ints. Variables like `width` and `height` must also be cast into floats (by putting (float) in front of it). Why? This code example shows you why.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/wrong_calculations_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/wrong_calculations.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/wrong_calculations)


Coding a Manuscript Grid
------------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript.jpg" />

The simplest possible grid to make is a manuscript grid that only requires 4 variables: x,y,width,height to define the rectangle in which we place content.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_manuscript_example.jpg" />
[Not Using Classes - Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/manuscript_grid_no_class)  
[Using Classes - Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/manuscript_grid_class)

Here's another example, where I'm placing circles inside the grid using the manuscript column.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/manuscript_grid_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/manuscript_grid_circles.png" />
[Not Using Classes - Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/manuscript_grid_circles) 

A nice way of encapsulating these 4 variables is by creating a class that can keep track of them and hide them from the main file. He I've created a _Column_ class to hold the column values. Nothing else changed. By extracting the grid code into a class we can add convenient helper methods to that class without cluttering out main source file.

Very simple Processing Code


Coding a Column Grid
--------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/column_grid)

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_random_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_column_random_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/column_grid_random_placement)

Here's the same circle example, just using the column grid code.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/column_grid_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/column_grid_circles.png" />
[Not Using Classes - Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/column_grid_circles) 

Coding a Modular Grid
---------------------

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_example_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_example.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/modular_grid_simple)

Here's the same circle example, just using the modular grid.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/modular_grid_circles_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/modular_grid_circles.png" />
[Not Using Classes - Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/modular_grid_circles) 


What is Used? What is Not?
--------------------------

The big problem is that we do not know what is used and what is not. If we randomly select a modules, we'll end up selecting the same module over and over. This can be solved by adding a "used" boolean to the module class and only selecting modules that are not used.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_no_overlap_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_no_overlap.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/modular_grid_no_overlap)


Karl Gerstner's Flexible Grid
-----------------------------

Even though it's quite some years ago now, Karl Gerstner is one of the few graphic designers who approached grid design from a programmable point of view.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner0_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner0.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner5.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner7.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner8_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner8.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner9_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner9.jpg" />

<blockquote data-slideshow="self">
<p>Grids can turn design into a simple act of placement of elements into a series of column. While this can provide the consistency, grids can be a trap for designers; creating uninspired, homogenous layouts. This is especially the case with simple grids. For Capital, Gerstner developed a complex grid which was flexible and allowed rapid, creative and consistent layouts. As a grid grows in complexity, it provides “a maximum number of constants with the greatest possible variability.</p>

<p>The grid looks incredibly complex at first, but upon examination, shows itself as a number of grids overlaid upon each other. While each grid overlay was often used separate, they were designed so if columns were mixed together, they would still maintain a harmony between each other. This way the magazine’s layout is consistent from page to page and between the different grid versions, separate or combined.</p>
</blockquote>
Source: [aisleone.net](http://www.aisleone.net/2010/design/celebrating-karl-gerstner/)

This concept of multiple grids is extremely powerful, and seems to be a perfect fit for the computer.


Multiple Grids
--------------

Gerstner for Capital. Needed a flexible grid that provided flexibility across all platforms and types of materials, but still bullet-proof so designers would not mess up the company identity. He used a combination of multiple grids to do this.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital1_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital1.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital3.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital5.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital6.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital7_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital7.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital8_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital8.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital9_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/gerstner_capital9.jpg" />

In code, it's amazingly easy to make something with multiple grids. Here's an example with the column grid and modular grid code combined into the smae processing sketch.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_multiple_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_multiple.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_multiple2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_multiple2.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/grid_multiple)

Here's a pretty ugly example illustrating multiple grids:

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_multiple_bruce_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_multiple_bruce.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/grid_multiple_bruce)


Random Grids
------------

Until now we have only used randomness to place objects within a static grid. But what if we want to randomly create the grid ever time the program runs? This is of course very simple, as we just replace the static numbers in the constructor with random numbers. Here it's our modular grid example with random numbers.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_random_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_random.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_random2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_random2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_random3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/grid_modular_random3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/modular_grid_random)


We can also play around with the column grid so each column has a random width. This makes for some interesting outputs. The only slightly difficult think is calculating the normalized values of the columns.

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_columns_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_columns.jpg" />
	
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_columns2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_columns2.jpg" />
	
<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_columns3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_columns3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/column_grid_random_columns)


We have already looked at how we can choose random placements in a modular grid without ever picking the same module. But what if we want to have larger random areas that span across multiple modules? 

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid5_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid5.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid6_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid6.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid4_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid4.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid2_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid2.jpg" />

<img src="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid3_small.jpg" data-slideshow="http://runemadsen-2012.s3.amazonaws.com/printing-code-2012/grid/random_grid3.jpg" />
[Example on Github](https://github.com/runemadsen/printing-code/tree/master/class_code/grid/modular_grid_no_overlap_random_size)