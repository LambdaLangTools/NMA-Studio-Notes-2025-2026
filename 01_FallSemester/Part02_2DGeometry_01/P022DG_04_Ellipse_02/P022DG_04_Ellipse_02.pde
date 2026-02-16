void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  fill(0, 0, 255);
  stroke(255);
  ellipse(
    mouseX,
    mouseY,
    100,
    100);
}
