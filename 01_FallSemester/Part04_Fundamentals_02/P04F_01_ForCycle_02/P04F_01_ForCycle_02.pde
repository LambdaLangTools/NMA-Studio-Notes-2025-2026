void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);
  stroke(255);
  for (float i=0; i<=width; i++) {
    line((i*mouseX), 0, (i*mouseY), height);
  }
}
