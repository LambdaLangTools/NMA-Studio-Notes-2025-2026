float r1 = 120;
float r2 = 95;
float r3 = 80;
float r4 = 175;
float r5 = 200;

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

  stroke(255, 8);
  line(oX, oY, aX, aY);
  line(aX, aY, bX, bY);
  line(bX, bY, cX, cY);
  line(cX, cY, dX, dY);
  line(dX, dY, eX, eY);

  a1 += 0.2;
  a2 -= 0.4;
  a3 += 0.6;
  a4 -= 0.8;
  a5 += 1.0;
}
