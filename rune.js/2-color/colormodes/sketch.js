var r = new Rune({
  container: "#canvas",
  width: 500,
  height: 400,
  debug: true
});

// First draw green with RGB colors
// Rune.js expects these values:
// Red:   0-255
// Green: 0-255
// Blue:  0-255

r.rect(0, 0, 250, r.height)
  .fill(0, 255, 0);

// Then draw green with HSB colors
// Rune.js expects these values:
// Hue:         0-360
// Saturation:  0-100
// Brightness:  0-100

r.rect(250, 0, 250, r.height)
  .fill(Rune.HSB, 120, 100, 100);

r.draw();