void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  float r = map(mouseX, 0, width, 255, 255);
  float g = map(mouseX+mouseY, 0, width+height, 255, 0);
  float b = map(mouseY, 0, height, 255, 65);
  float diam = map(mouseX+mouseY, 0, width+height, 0, 100);
  noStroke();
  fill(r, g, b);
  ellipse(mouseX, mouseY,diam, diam);
}
