var r = new Rune({
  container: "#canvas",
  width: 500,
  height: 400
});

var wave = r.path(100, 100)
  .curveTo(0, 0, 25, -50, 50, 0)
  .curveTo(50, 0, 75, 50, 100, 0)
  .curveTo(100, 0, 125, -50, 150, 0)
  .lineTo(150, 100)
  .lineTo(0, 100)
  .closeShape()
  .fill(255, 0, 0)

r.draw();