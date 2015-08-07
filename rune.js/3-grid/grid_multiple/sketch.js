var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 800,
  debug: true
});

// Create a rectangle to fill the entire screen
// and a smaller rectangle on top
var grid1 = r.grid({
  x: 0,
  y: 0,
  width: r.width,
  height: r.height,
  gutter: 0,
  columns: 3,
  rows: 3
});

var grid2 = r.grid({
  x: 100,
  y: 100,
  gutter: 25,
  width: r.width - 200,
  height: r.height - 200,
  columns: 5,
  rows: 5
});

r.draw();