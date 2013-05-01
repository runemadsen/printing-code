void setup() 
{
  size(1280, 800, P3D);
  fill(255);
  background(0);

  lights();

  translate(300, 50, 0);

  pushMatrix();
	translate(130, height/2, 0);
	rotateY(1.25);
	rotateX(-0.4);
	noStroke();
	box(100);
	popMatrix();
	
	pushMatrix();
	translate(500, height*0.35, -200);
	noFill();
	stroke(255);
	sphere(280);
	popMatrix();
}
