void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);
  stroke(255);
  for (float i=0; i<600; i++) {
    float t = (sin(radians(frameCount))*3);
    float a = radians(i*t);
    float aa = radians(i+t+frameCount);
    float sin = sin(a)*cos(aa);
    float cos = sin(aa)*cos(a);
    float sinwave = map(sin, -1, 1, height/2, 100);
    float coswave = map(cos, -1, 1, height/2, 700);
    float r = map(i, 0, 600, 255, 255);
    float g = map(i, 0, 600, 255, 0);
    float b = map(i, 0, 600, 255, 65);
    stroke(r, g, b);
    line(100+i, coswave, 100+i, sinwave);
  }
}
