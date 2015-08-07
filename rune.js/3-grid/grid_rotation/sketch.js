var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 800,
  debug: true
});

// Create a rectangle to fill the entire screen
// and a smaller rectangle on top
var grid = r.grid({
  x: 50,
  y: 50,
  width: r.width - 100,
  height: r.height - 100,
  gutter: 20,
  columns: 3,
  rows: 3
});

var rect = r.rect(10, 10, 100, 100);
grid.add(rect, 2, 2);

grid.rotate(45, r.width/2, r.height/2);

r.draw();