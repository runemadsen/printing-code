var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var maxLevel = 5;

var color1 = new Rune.Color(60, 100, 150);
var color2 = new Rune.Color(140, 180, 220);
var color3 = new Rune.Color(40, 40, 40);
var color4 = new Rune.Color(50, 60, 70);

var pattern = drawL(0, 0, 0, 600, 0, color1);

function drawL(x, y, rot, len, level, color, parent) {

  var layer = r.group(x, y, parent).rotate(rot, x, y);

  var l = r.polygon(0, 0, layer)
    .fill(color)
    .stroke(false)
    .lineTo(0, 0)
    .lineTo(0, len)
    .lineTo(len, len)
    .lineTo(len, len/2)
    .lineTo(len/2, len/2)
    .lineTo(len/2, 0);

  if(level < maxLevel)
  {
    level++;

    drawL(len/4, len/4, 0, len/2, level, color1, layer);
    drawL(len/2, 0, 90, len/2, level, color2, layer);
    drawL(0, len/2, 0, len/2, level, color3, layer);
    drawL(len/2, len, -90, len/2, level, color4, layer);
  }

  return l;
}

r.draw();