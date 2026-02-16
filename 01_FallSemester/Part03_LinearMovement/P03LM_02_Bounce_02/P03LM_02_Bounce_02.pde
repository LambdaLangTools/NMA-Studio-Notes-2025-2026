float posX,posY;
float diam = 50;
float Xdir = random(10);
float Ydir = random(10);

void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
  posX = random(width);
  posY = random(height);
}

void draw() {
  background(0, 0, 255);
  noStroke();
  fill(255);
  ellipse(posX, posY, diam, diam);
  posX = posX + Xdir;
  posY = posY + Ydir;

  if ((posX+diam/2)>width || (posX-diam/2)<0) {
    Xdir = Xdir * -1;
  }
  
  if ((posY+diam/2)>height || (posY-diam/2)<0) {
    Ydir = Ydir * -1;
  }
}
