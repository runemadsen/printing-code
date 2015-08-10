var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 500,
  debug: true
});

r.rect(0, 0, r.width, r.height).fill(0).stroke(false); // uncomment for white background

r.rect(150, 150, 200, 200).fill('hsv', 50, 100, 100).stroke(false);
r.rect(450, 150, 200, 200).fill('hsv', 300, 60, 30).stroke(false);

r.draw();