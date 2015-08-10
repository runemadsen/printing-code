var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 600,
  debug: true
});

// background
r.rect(0, 0, r.width/2, r.height).fill(0).stroke(false);

// foregrounds
var size = r.width * 0.1;

r.rect((r.width * 0.25) - (size/2), (r.height / 2) - (size / 2), size, size * 1.2)
  .fill('hsv', 0, 0, 20)
  .stroke(false)
  .copy()
  .move(r.width / 2, 0, true)
  .fill('hsv', 0, 0, 63)

r.draw();