var r = new Rune({
  container: "#canvas",
  width: 600,
  height: 400,
  debug: true
});

r.text("My name is Rune Madsen", r.width/2, 200)
  .fill(30)
  .stroke(false)
  .fontSize(42)
  .textAlign("center")
  .fontFamily("Helvetica")
  .textDecoration("underline")
  .fontWeight("bold")

r.draw();