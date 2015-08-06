var r = new Rune({
  container: "#canvas",
  width: 800,
  height: 500,
  debug: true
});

var size = 80;

// WRONG
for(var i = 0; i < 10; i++) {
  r.rect(i * size, 0, size, r.height/2)
    .fill(Rune.HSV, 0, 0, i * 10)
    .stroke(false)
}

// RIGHT
for(var i = 0; i < 10; i++) {

  // create the color in LAB and convert to RGB
  var rgb = colorConvert.lab2rgb(i * 10, 0, 0);

  r.rect(i * size, r.height/2, size, r.height/2)
    .fill(rgb[0], rgb[1], rgb[2])
    .stroke(false)
}


r.draw();