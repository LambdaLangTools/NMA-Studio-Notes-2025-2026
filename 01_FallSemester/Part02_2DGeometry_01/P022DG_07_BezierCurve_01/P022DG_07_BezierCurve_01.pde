void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
  noFill();
  stroke(255);
}

void draw() {
  background(0, 0, 255);

  bezier(
    0,
    height/2,
    mouseX,
    mouseY,
    width-mouseX,
    height-mouseY,
    width,
    height/2
    );
}
