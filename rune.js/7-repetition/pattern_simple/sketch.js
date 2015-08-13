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
    r.rect(x, y, size, size)
      .fill(r.random(200))
      .stroke(false);

    r.rect(x + 10, y + 10, size - 20, size - 20)
      .fill(r.random(200))
      .stroke(false)
      .rotate(45, x + (size/2), y + (size/2));
  }
}

r.draw();