void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
}


void mouseDragged() {
  randomBrush();
}

void randomBrush() {
  stroke(255);
  line(mouseX+random(-50, 50), mouseY+random(-50, 50), mouseX+random(-50, 50), mouseY+random(-50, 50));
  line(mouseX+random(-50, 50), mouseY+random(-50, 50), mouseX+random(-50, 50), mouseY+random(-50, 50));
}
