var r = new Rune({
  container: "#canvas",
  width: 500,
  height: 400,
  debug: true
});

// Draw a red rectangle
var redSquare = r.rect(50, 20, 80, 360)
  .fill(Rune.HSB, 0, 100, 100)
  .stroke(false);

// Darken and desaturate original color
redSquare.copy().move(80, 0, true).vars.fill
  .darken(0.5)
  .desaturate(0.1);

// Ligten original color
redSquare.copy().move(160, 0, true).vars.fill
  .lighten(0.3);

// Complementary color
redSquare.copy().move(240, 0, true).vars.fill
  .lighten(0.3)
  .rotate(180)

// Mix 40% of green into the red color
redSquare.copy().move(320, 0, true).vars.fill
  .mix(new Rune.Color(0, 255, 0), 0.4);

r.draw();

