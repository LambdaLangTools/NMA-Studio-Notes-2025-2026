void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  noFill();
  stroke(255, 64);
  bezier(
    0,
    0,
    random(width),
    0,
    random(width),
    height,
    width,
    height
    );
}
