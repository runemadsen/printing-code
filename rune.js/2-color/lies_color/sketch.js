var r = new Rune({
  container: "#canvas",
  width: 700,
  height: 800,
  debug: true
});

// backgrounds
r.rect(0, 0, r.width, r.height/2).fill(Rune.HSV, 330, 54, 36).stroke(false);
r.rect(0, r.height/2, r.width, r.height/2).fill(Rune.HSV, 23, 66, 31).stroke(false);

// foregrounds
var size = r.width * 0.13;
var mid = (r.width/2) - (size/2);
var fourth = r.height/4

r.rect(mid, fourth - (size/2), size, size)
  .fill(Rune.HSV, 0, 46, 34)
  .stroke(false)
  .copy()
  .move(0, fourth*2, true)

r.draw();