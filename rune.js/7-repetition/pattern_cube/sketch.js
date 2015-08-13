var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var a = 10;
var b = 20;
var c = 30;
var d = 40;

for (var y = 0; y <= r.height; y += c)
{
  for (var x = 0; x <= r.width; x += d)
  {
    var centerX = x;
    var centerY = y;

    // shift every other row to the left to
    // fit inside the row above.
    if((y/c) % 2 == 0) {
      centerX -= b;
    }

    r.polygon(centerX, centerY)
      .fill(5, 133, 170)
      .lineTo(0, -c)
      .lineTo(b, -b)
      .lineTo(0, -a)
      .lineTo(-b, -b);

    r.polygon(centerX, centerY)
      .fill(1, 40, 76)
      .lineTo(-b, -b)
      .lineTo(0, -a)
      .lineTo(0, a)
      .lineTo(-b, 0);

    r.polygon(centerX, centerY)
      .fill(155)
      .lineTo(b, -b)
      .lineTo(b, 0)
      .lineTo(0, a)
      .lineTo(0, -a);
  }
}

r.draw();