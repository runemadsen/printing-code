How To Use PGraphics
====================

Normally in Processing you draw stuff directly to the screen, and then use saveFrame() to save a picture of the output. This looks something like this:

	void draw()
	{
	  size(500, 500);
	  rect(0, 0, 50, 50);
	  saveFrame("grab.png");
	}

However, now that you want to create a high-resolution image, how are you going to see what's on the screen? If you run your program like this, you'll only see a tiny corner of the giant picture, because a size of 2550x3300 is way bigger than your computer screen:

	// dont' do this
	void draw()
	{
	  size(2550, 3300);
	  rect(0, 0, 50, 50);
	  saveFrame("grab.png");
	}
	
That may be fine for quick sketches, but it's really not a good way of working, because you need to run the program, open the sketch folder, and check the outputted image on even a single change.

To circumvent this, Processing has something called a PGraphics object, which is basically "another" screen. You can draw stuff into this screen by calling all the drawing methods on this object instead:

	PGraphics canvas;
	void draw()
	{
	  size(500, 500);
	  canvas = createGraphics(2550, 3300);
	  canvas.beginDraw(); 
	  canvas.rect(0, 0, 50, 50);
	  canvas.endDraw();
	  saveFrame("grab.png");
	}
	
You can also think about the PGraphics object as an image where all the drawing functions work on.

This fixed our problem with having too big a window. But if you run this code, the window will be blank. It's blank because we're drawing everything into another screen - the PGraphics object. Luckily we can draw the PGraphics drawing on the screen with the image() function. And the really cool thing is that we can pass a width and a height to the image function to scale the giant PGraphics object to our screen:

	PGraphics canvas;
	void draw()
	{
	  size(500, 500);
	  canvas = createGraphics(2550, 3300);
	  canvas.beginDraw(); 
	  canvas.rect(0, 0, 50, 50);
	  canvas.endDraw();
	  image(canvas, 0, 0, canvas.width * 0.2, canvas.height * 0.2);
	  saveFrame("grab.png");
	}

This scales our giant drawing to the main window. Great. Almost there.

But if you look at the image we're saving, it's an image of our small main window, not the high-res PGraphics drawing. This is because the saveFrame() function always takes whatever is on the main screen, and this is our scaled down version of the PGraphics drawing.

Instead, we need to call save() on the PGraphics object to save the high-res drawing:

	PGraphics canvas;
	void draw()
	{
	  size(500, 500);
	  canvas = createGraphics(2550, 3300);
	  canvas.beginDraw(); 
	  canvas.rect(0, 0, 50, 50);
	  canvas.endDraw();
	  image(canvas, 0, 0, canvas.width * 0.2, canvas.height * 0.2);
	  canvas.save("grab.png");
	}
	
Boom! Now we have a high-res image in our sketch folder.

If you look in the main repository, there's a little more code than this. Most of this code is in the calculate_resize_ratio() function. This is not something you should worry too much about. It's basically just automatically figuring out how much we need to resize the pgraphics object to fit it on the screen.

This is a pretty easy calculation. In the previous example, I would find the ratio by dividing the height of the window with the height of the PGraphics object:

float ratio = height / canvas.height; // return 0.151515

This means that the canvas has to resized to 15% of its original size to fit on the screen. We can easily do this by multiplying the canvas height with this new ratio when drawing:

image(canvas, 0, 0, canvas.width * ratio, canvas.height * ratio);

The code is a little more complicated than that, as we want it to check which dimension is the biggest, and resize to that dimension. We'll talk more about that in class.