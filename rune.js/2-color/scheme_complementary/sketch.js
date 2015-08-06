var r = new Rune({
  container: "#canvas",
  width: 400,
  height: 400,
  debug: true
});

// Draw the color scheme
var square1 = r.rect(0, 0, 200, r.height).fill(Rune.HSV, 0, 100, 100).stroke(false);
var square2 = square1.copy().move(200, 0).fill(Rune.HSV, 180, 100, 100);

// If we want to be fancy, we can change the base hue
// by moving the mouse around.
r.on('mousemove', function(mouse) {
  var hue = (mouse.x / r.width) * 360;
  square1.fill(Rune.HSV, hue, 100, 100);
  square2.fill(Rune.HSV, hue + 180, 100, 100);
});

r.play();