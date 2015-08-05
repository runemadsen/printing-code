var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var radius = 200;
var numRects = 30;
var angle = 360 / numRects;
var group = r.group(r.width / 2, r.height / 2);

for(var i = 0; i < numRects; i++)
{
  var x = Math.cos(r.radians(i * angle)) * radius;
  var y = Math.sin(r.radians(i * angle)) * radius;
  r.rect(x, y, 50, 10, group)
    .rotate(i * angle, 0, 0, true);
}

r.draw();