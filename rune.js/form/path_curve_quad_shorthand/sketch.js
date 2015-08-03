var r = new Rune({
  container: "#canvas",
  width: 500,
  height: 400
});

var circ = r.path(r.width/2, r.height/2);

var radius = 200;
var numPoints = 4;
var angle = 360 / numPoints;

for(var i = 0; i < numPoints; i++)
{
  var x = Math.cos(r.radians(i * angle)) * radius;
  var y = Math.sin(r.radians(i * angle)) * radius;
  circ.curveTo(x, y);
}

r.draw();