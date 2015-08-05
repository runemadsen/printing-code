var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 500
});

for(var x = 0; x < 5; x++)
{
  for(var y = 0; y < 4; y++)
  {
    var ranX = (x * 170) + r.random(-50, 50);
    var ranY = (y * 120) + r.random(-50, 50);

    r.rect(ranX, ranY, 50, 50)
      .rotate(r.random(360), 25, 25, true);
  }
}

r.draw();