var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 500,
  debug: true
});

r.rect(0, 0, r.width, r.height).fill(0).stroke(false); //fill(255)

r.rect(150, 150, 200, 200).fill(Rune.HSV, 40, 100, 100).stroke(false);
r.rect(450, 150, 200, 200).fill(Rune.HSV, 40, 50, 90).stroke(false);

r.draw();