void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);
  stroke(255);
  for (float i=0; i<600; i+=(mouseX+1)) {
    line(100+i, 100, 100+i, 700);
  }
}
