var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600
});

var p = r.polygon(200, 100)
  .stroke(false)
  .fill(30, 30, 30);

for(var i = 0; i < 40; i++) {
  p.lineTo(Math.random() * 400, Math.random() * 400);
}

r.draw();