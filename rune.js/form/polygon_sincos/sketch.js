var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 850
});

var radius = 100;
var points = [3, 4, 6, 40];

for(var i = 0; i < points.length; i++) {

  var shape = r.polygon(r.width/2, 125 + (i * 200));
  var spacing = 360/points[i];

  for(var j = 0; j < points[i]; j++) {
    var x = Math.cos(r.radians(j * spacing)) * radius;
    var y = Math.sin(r.radians(j * spacing)) * radius;
    shape.lineTo(x, y);
  }

}

r.draw();