
void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {

  float gMin = width/4;
  float gMax = 3*gMin;
  float len = 50;
  float gX = map(mouseX, 0, width-1, gMin, gMax);
  float pX = map(gX, gMin, gMax, 0, 100);

  background(0, 0, 255);
  stroke(255);
  line(mouseX, 3*height/4, mouseX, height);
  line(mouseX, 3*height/4, gX, height/2);
  line(gMin, height/2, gMax, height/2);
  line(gX, height/2, gX, height/2-len);
  textAlign(CENTER, BOTTOM);
  text(pX+"%", gX, height/2-(len*1.25));
}
