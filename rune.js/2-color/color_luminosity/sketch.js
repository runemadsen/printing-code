var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 400,
  debug: true
});

// Create a rectangle to fill the entire screen
// and a smaller rectangle on top
var bg = r.rect(0, 0, r.width, r.height).fill(255, 0, 0).stroke(false);
var front = r.rect(250, 150, 100, 100).fill(0).stroke(false);

r.on('mousemove', function(mouse) {

  // change the hue and brightness with the
  // mouse cursor
  var hue = (mouse.x / r.width) * 360;
  var brightness = (mouse.y / r.height) * 100;
  bg.fill(Rune.HSV, hue, 100, brightness);

  // change the front rectangle to black or white
  // depending on the luminosity.
  if(bg.vars.fill.light()) {
    front.fill(0);
  } else {
    front.fill(255);
  }

});

r.play();