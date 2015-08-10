var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 400,
  debug: true
});

// Draw the color scheme
var square1 = r.rect(0, 0, 200, r.height).fill('hsv', 0, 100, 100).stroke(false);
var square2 = square1.copy().move(200, 0);
var square3 = square1.copy().move(400, 0);

// If we want to be fancy, we can change the base hue
// by moving the mouse around.
r.on('mousemove', function(mouse) {
  var hue = (mouse.x / r.width) * 360;
  square1.fill('hsv', hue, 100, 100);
  square2.fill('hsv', hue, 100, 100).vars.fill.darken(0.3);
  square3.fill('hsv', hue, 100, 100).vars.fill.darken(0.6);
});

r.play();