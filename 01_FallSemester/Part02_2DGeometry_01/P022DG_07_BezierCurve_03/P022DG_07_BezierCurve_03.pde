void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  noFill();
  stroke(255, 64);
  bezier(
    width/5,
    height/2,
    random(width),
    random(height),
    random(width),
    random(height),
    4*width/5,
    height/2
    );
}
