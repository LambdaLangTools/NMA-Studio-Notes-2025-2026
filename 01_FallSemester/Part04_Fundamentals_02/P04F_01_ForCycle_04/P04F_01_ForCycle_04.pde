void setup() {
  size(800, 800, P2D);
  background(0, 0, 255);
  smooth();
  textAlign(CENTER, CENTER);
}

void draw() {
  background(0, 0, 255);
  strokeWeight(3);
  for (float i=0; i<=10; i++) {
    float posX = random(width);
    float posY = random(height);
    fill(0,0,255);
    stroke(255,0,65);
    ellipse(posX, posY, 100, 100);
    fill(255);
    text("Ball #"+int(i), posX, posY);
  }
  noLoop();
}
