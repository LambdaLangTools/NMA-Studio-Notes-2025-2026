float posX;
float diam = 50;
float dir = 5;

void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
  posX = width/2;
}

void draw() {
  background(0, 0, 255);
  noStroke();
  fill(255);
  ellipse(posX, height/2, diam, diam);
  
  posX+=dir;

  if ((posX+diam/2)>width || (posX-diam/2)<0) {
    dir = dir * -1;
  }
  
}
