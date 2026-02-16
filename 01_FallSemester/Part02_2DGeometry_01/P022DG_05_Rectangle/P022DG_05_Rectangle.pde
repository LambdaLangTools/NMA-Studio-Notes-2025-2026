void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);
  noStroke();
  fill(255, 0, 65);
  rect(100, 100, 600, mouseY);
}
