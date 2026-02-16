void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  
  background(0, 0, 255);
  noFill();
  stroke(255, 0, 65);
  strokeWeight(5);
  
  beginShape();
  vertex(random(width),random(height));
  vertex(random(width),random(height));
  vertex(random(width),random(height));
  vertex(random(width),random(height));
  vertex(random(width),random(height));
  endShape(CLOSE);
  
  noLoop();
}
