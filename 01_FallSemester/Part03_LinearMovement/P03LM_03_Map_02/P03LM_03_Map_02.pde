float posX = 0;

void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  float r = map(posX, 0, width, 255, 255);
  float g = map(posX, 0, width, 255, 0);
  float b = map(posX, 0, width, 255, 65);
  float diam = map(posX, 0, width, 0, 100);
  noStroke();
  fill(r, g, b);
  ellipse(posX, height/2, diam, diam);
  posX = posX + 1;
}
