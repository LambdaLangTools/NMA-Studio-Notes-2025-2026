void setup() {
  fullScreen(P2D);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);
  stroke(255);
  float step = 64;
  for (float j=0; j<=height; j+=step) {
    for (float i=0; i<width; i++) {
      float a = radians((i*j*0.01)+frameCount*10);
      float sin = sin(a);
      float cos = cos(a);
      float sinwave = map(sin, -1, 1, j, j-step);
      float coswave = map(cos, -1, 1, j, j+step);
      float r = map(i, 0, width, 255, 255);
      float g = map(i, 0, width, 255, 0);
      float b = map(i, 0, width, 255, 65);
      float alpha = map(j, 0, height, 0, 255);
      stroke(r, g, b, alpha);
      line(i, coswave, i, sinwave);
    }
  }
}
