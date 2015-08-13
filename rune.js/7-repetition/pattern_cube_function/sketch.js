var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

drawPattern(100, 100, 600, 400, 6);

function drawPattern(startX, startY, width, height, size)
{
  var parent = r.group(startX, startY);

  var a = size;
  var b = size * 2;
  var c = size * 3;
  var d = size * 4;

  for (var y = 0; y <= height; y += c)
  {
    for (var x = 0; x <= width; x += d)
    {
      var centerX = x;
      var centerY = y;

      // shift every other row to the left to
      // fit inside the row above.
      if((y/c) % 2 == 0) {
        centerX -= b;
      }

      r.polygon(centerX, centerY, parent)
        .fill(5, 133, 170)
        .lineTo(0, -c)
        .lineTo(b, -b)
        .lineTo(0, -a)
        .lineTo(-b, -b);

      r.polygon(centerX, centerY, parent)
        .fill(1, 40, 76)
        .lineTo(-b, -b)
        .lineTo(0, -a)
        .lineTo(0, a)
        .lineTo(-b, 0);

      r.polygon(centerX, centerY, parent)
        .fill(155)
        .lineTo(b, -b)
        .lineTo(b, 0)
        .lineTo(0, a)
        .lineTo(0, -a);
    }
  }
}

r.draw();