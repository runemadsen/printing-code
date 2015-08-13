var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var size = 50;

for(var x = 0; x < r.width; x += size)
{
  for(var y = 0; y < r.height; y += size)
  {
    drawTile(x, y, size);
  }
}

function drawTile(x, y, size)
{
  for(var i = 0; i < 4; i++)
  {
    r.polygon(x, y)
      .lineTo(0, 0)
      .lineTo(0, size)
      .lineTo(size, size)
      .fill(r.random(255), r.random(1))
      .rotate(i * 90, x, y)
      .stroke(false);

    r.polygon()
      .lineTo(0, 0)
      .lineTo(size, 0)
      .lineTo(size, size)
      .fill(r.random(255), r.random(1))
      .rotate(i * 90, x, y)
      .stroke(false);
  }
}

r.draw();