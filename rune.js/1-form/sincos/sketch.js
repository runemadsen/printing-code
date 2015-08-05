var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

// draw a circle
r.circle(0, 0, 50);

// now find the x,y of the new point that is 300px and 45 degrees away from the center point
// notice how we need to convert our degrees to radians with the radians() function
var x = Math.cos(r.radians(45)) * 300;
var y = Math.sin(r.radians(45)) * 300;

// draw a circle at that x and y
r.circle(x, y, 50);

r.draw();