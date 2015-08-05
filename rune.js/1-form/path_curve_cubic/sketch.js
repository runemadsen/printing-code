var r = new Rune({
  container: "#canvas",
  width: 500,
  height: 400,
  debug: true
});

var wave = r.path(100, 100)
  .curveTo(0, 0, 50, -100, 100, 0)
  .curveTo(100, 0, 150, 100, 200, 0)
  .curveTo(200, 0, 250, -100, 300, 0)
  .lineTo(300, 200)
  .lineTo(0, 200)
  .closeShape();

r.draw();