var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 800,
  debug: true
});

var colors = [
  [351, 65, 35, 213, 58, 38],
  [218, 65, 35, 350, 43, 45],
  [5, 75, 49, 205, 58, 53],
  [215, 78, 38, 5, 75, 49],
  [346, 62, 64, 172, 28, 52],
  [204, 31, 73, 8, 40, 78]
];

var x = 100;
var y = 30;
var width = 180;
var height = 110;
var spacing = 15;

for(var i = 0; i < colors.length; i++)
{
  r.rect(x, y, width, height)
    .fill('hsv', colors[i][0], colors[i][1], colors[i][2])
    .stroke(false);

  r.rect(x + width, y, width, height)
    .fill('hsv', colors[i][3], colors[i][4], colors[i][5])
    .stroke(false);

  y += height + spacing;
  x = Math.round(r.random(100, 130));
}



r.draw();