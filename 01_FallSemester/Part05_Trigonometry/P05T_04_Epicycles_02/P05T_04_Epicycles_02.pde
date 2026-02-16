float r1 = 100;
float r2 = 75;
float r3 = 50;
float r4 = 75;
float r5 = 100;

float a1 = 20;
float a2 = 300;
float a3 = 78;
float a4 = 34;
float a5 = 180;

void setup() {
  size(800, 800, P2D);
  background(0, 0, 255);
  smooth();
}

void draw() {

  float oX = width/2;
  float oY = height/2;
  float aX = oX + cos(radians(a1))*r1;
  float aY = oY + sin(radians(a1))*r1; 
  float bX = aX + cos(radians(a2))*r2;
  float bY = aY + sin(radians(a2))*r2; 
  float cX = bX + cos(radians(a3))*r3;
  float cY = bY + sin(radians(a3))*r3; 
  float dX = cX + cos(radians(a4))*r4;
  float dY = cY + sin(radians(a4))*r4; 
  float eX = dX + cos(radians(a5))*r5;
  float eY = dY + sin(radians(a5))*r5; 

  float diam = 5;
  fill(255,0,65);
  noStroke();
  ellipse(aX, aY, diam, diam);
  ellipse(bX, bY, diam, diam);
  ellipse(cX, cY, diam, diam);
  ellipse(dX, dY, diam, diam);
  ellipse(eX, eY, diam, diam);

  a1 += 0.1;
  a2 -= 0.2;
  a3 += 0.3;
  a4 -= 0.4;
  a5 += 0.5;
}
