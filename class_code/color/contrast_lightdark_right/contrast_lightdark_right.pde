void setup()
{
  size(1280, 800);
  colorMode(HSB, 360, 100, 100);
  background(360);
  noStroke();
  
  int rectWidth = 100;
  int rectHeight = 400;
  
  float steps = 10;
  float start = 10;
  float stop = 90;
  
  // do crazy things to calculate exponential steps
  float k = (log(stop) - log(start) ) / (steps-1);
  float a = stop/exp(k*steps);
  
  translate(100, 200);
  
  for(int i = 0; i < steps; i++)
  {
    float bright = a * exp(k*(i+1));
    fill(0, 0, bright);
    rect(i * rectWidth, 0, rectWidth, rectHeight);
  }
}
