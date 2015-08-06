var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 400,
  debug: true
});

function randomColor() {
  return new Rune.Color(Rune.HSV, r.random(0, 360), r.random(20, 100), r.random(20, 100));
}

// Draw the color scheme
var square1 = r.rect(0, 0, 200, r.height).fill(randomColor()).stroke(false);
var square2 = square1.copy().move(200, 0).fill(randomColor());
var square3 = square1.copy().move(400, 0).fill(randomColor());

r.play();