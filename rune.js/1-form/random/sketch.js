var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 500
});

for(var i = 0; i < 30; i++) {
  r.circle(r.random(r.width), r.random(r.height), 30);
}

r.draw();