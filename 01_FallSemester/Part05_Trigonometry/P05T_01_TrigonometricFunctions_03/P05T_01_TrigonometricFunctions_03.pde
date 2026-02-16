
void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}


void draw() {

  float lim = mouseX+1;
  background(0, 0, 255);
  stroke(255);

  beginShape();
  for (int i=0; i<(lim); i++) {
    float sinF = sin(radians((i*10)+frameCount));

    float plotX = map(i, 0, lim, 0, width-1);
    float plotY = map(sinF, -1, 1, height, 0);

    vertex(plotX, plotY);
  }
  endShape();
}
