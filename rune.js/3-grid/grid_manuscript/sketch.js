var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 400,
  debug: true
});

// Create a rectangle to fill the entire screen
// and a smaller rectangle on top
var grid = r.grid({
  x: 50,
  y: 50,
  width: r.width - 100,
  height: r.height - 100,
  columns: 1,
  rows: 1
});

var size = 40;

for(var i = 0; i < 50; i++)
{
  var color = new Rune.Color(r.random(0, 255), r.random(0, 255), r.random(0, 255));
  var x = r.random(size, grid.vars.width - size);
  var y = r.random(size, grid.vars.height - size);
  var circle = r.circle(x, y, size).fill(color).stroke(false);
  grid.add(circle, 1, 1);
}

r.draw();