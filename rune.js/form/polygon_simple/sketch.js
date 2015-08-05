var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var sideLength = 100;
var a = sideLength / 2;
var b = Math.sin(r.radians(60)) * sideLength;

var hexagon = r.polygon(100, 100)
  .lineTo(0, b)
  .lineTo(a, 0)
  .lineTo(a+sideLength, 0)
  .lineTo(2*sideLength, b)
  .lineTo(a+sideLength, 2*b)
  .lineTo(a, 2*b)
  .lineTo(0, b);

r.draw();