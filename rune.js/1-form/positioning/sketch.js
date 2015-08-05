var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 600
});

var rectSize = 50;
var circleRadius = 60;

// draw a rectangle in the left corner
r.rect(0, 0, rectSize, rectSize);

// draw a rectangle in the right corner
r.rect(r.width - rectSize, 0, rectSize, rectSize);

// draw a rectangle in the center
r.rect(r.width / 2 - rectSize / 2, 0, rectSize, rectSize);

// draw a rectangle at the golden ratio x
var golden = (1 + Math.sqrt(5)) / 2;
r.rect(r.width / golden, 0, rectSize, rectSize);

// draw an ellipse in the center of screen
r.circle(r.width / 2, r.height / 2, circleRadius);

// draw an ellipse on the edge of the other ellipse, on 45 degrees
var x = Math.cos(r.radians(45)) * circleRadius;
var y = Math.sin(r.radians(45)) * circleRadius;
r.circle((r.width / 2) + x, (r.height/2) + y, 10);

r.draw();