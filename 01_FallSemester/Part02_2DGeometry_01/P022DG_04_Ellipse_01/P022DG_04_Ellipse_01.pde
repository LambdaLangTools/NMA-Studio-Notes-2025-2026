void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  noFill();
  stroke(255);
  ellipse(
    width/2,
    height/2,
    mouseX,
    mouseY
    );
}
