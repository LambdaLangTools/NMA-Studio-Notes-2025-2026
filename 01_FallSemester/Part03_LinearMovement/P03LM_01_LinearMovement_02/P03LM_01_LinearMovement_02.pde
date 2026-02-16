float posX;
float posY;
float diam = 100;
float r, g, b;

void setup() {
  size(800, 800, P2D);
  background(0, 0, 255);
  smooth();
  posX = width/2;
  posY = height/2;
  r = 255;
  g = 255;
  b = 255;
}

void draw() {
  
  noStroke();
  fill(r, g, b);
  ellipse(posX, posY, diam, diam);
  posX = posX + 10;

  if ((posX-diam/2)>width) {
    posX = -diam/2;
    posY = random(height);
    r = 255;
    g = random(255);
    b = random(255);
  }
  
  filter(DILATE);
  filter(BLUR);
}
