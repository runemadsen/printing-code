void setup()
{
  size(1280, 800);
  noStroke();
  background(255);
  smooth();
  
  int fontX = 150;
  int fontY = height / 2;
  int fontHeight = 130;
  
  PFont helvetica = createFont("Arial", fontHeight);
  textFont(helvetica);
  
  String sentence = "Is this Helvetica?";
  
  translate(fontX, fontY);

  fill(255, 0, 0);
  ellipse(0, 0, 20, 20);
  
  fill(30);
  text(sentence, 0, 0);
  
  // get text width
  float fontWidth = textWidth(sentence);
  
  // draw rectangle around box
  noFill();
  stroke(150);
  rect(0, -fontHeight, fontWidth, fontHeight);

  // now let's draw a line between every character
  stroke(255, 0, 0);
  float xPos = 0;
  
  for(int i = 0; i < sentence.length(); i++)
  {
    char c = sentence.charAt(i);
    xPos += textWidth(c);
    line(xPos, -fontHeight, xPos, 0);
  }
  
  saveFrame("grab.png");
}
