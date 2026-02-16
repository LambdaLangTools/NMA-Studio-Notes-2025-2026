void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);

  float sides = round(map(sin(frameCount*0.1), -1, 1, 3, 12));
  float r = 300;
  noFill();

  stroke(255, 0, 65);
  beginShape();
  for (float i=0; i<360; i++) {
    float a = i*radians((360./sides));
    float vx = width/2+cos(a)*r;
    float vy = height/2+sin(a)*r;
    vertex(vx, vy);
  }
  endShape();

  for (float i=0; i<360; i++) {
    float a = i*radians((360./sides));
    float px = width/2+cos(a)*r;
    float py = height/2+sin(a)*r;
    stroke(255);
    line(width/2, height/2, px, py);
    noStroke();
    fill(255);
    ellipse(px, py, 10, 10);
  }
}
