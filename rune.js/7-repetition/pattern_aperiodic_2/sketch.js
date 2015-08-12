var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var factor = Math.sqrt(3);
var maxLevel = 1;

var color1 = new Rune.Color(0, 60, 130);
var color2 = new Rune.Color(80, 200, 250);

var pattern = drawTriangle(r.width/2, 0, 800, 0, 0, false, color1);

function drawTriangle(x, y, size, rot, level, drawSingle, color, parent) {

  var b = size / 2;
  var c = size / factor;
  var a = Math.sqrt((c*c) - (b*b)); // a2 + b2 = c2

  var layer = r.group(x, y, parent).rotate(rot, x, y);

  var l = r.polygon(0, 0, layer)
    .fill(color)
    .lineTo(0, 0)
    .lineTo(-b, a)
    .lineTo(b, a);

  if(drawSingle && level < maxLevel)
  {
    level++;
    drawTriangle(0, 0, size, 0, level, false, color1, layer);
  }
  else if(level < maxLevel)
  {
    level++;

    drawTriangle(-(a / factor), a, c, 150, level, false, color1, layer);
    drawTriangle(a / factor, a, c, -150, level, false, color1, layer);

    var childBottom = c / factor;
    var childB = childBottom / 2;
    var childC = childBottom / factor;
    var childA = Math.sqrt((childC*childC) - (childB*childB)); // a2 + b2 = c2

    // all these small triangles should draw a big one, not subdivide immediately.
    drawTriangle(0, a - childA, childBottom, 0, level, true, color2, layer);
    drawTriangle(0, a - childA, childBottom, 120, level, true, color2, layer);
    drawTriangle(0, a - childA, childBottom, -120, level, true, color2, layer);
  }
}

r.draw();