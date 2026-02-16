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
  background(0, 0, 255);  

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


  strokeWeight(3);
  stroke(255, 0, 65);
  noFill();
  ellipse(oX, oY, r1*2, r1*2);
  ellipse(aX, aY, r2*2, r2*2);
  ellipse(bX, bY, r3*2, r3*2);
  ellipse(cX, cY, r4*2, r4*2);
  ellipse(dX, dY, r5*2, r5*2);

  noStroke();
  fill(255);
  ellipse(oX, oY, 10, 10);
  ellipse(aX, aY, 10, 10);
  ellipse(bX, bY, 10, 10);
  ellipse(cX, cY, 10, 10);
  ellipse(dX, dY, 10, 10);
  ellipse(eX, eY, 10, 10);

  strokeWeight(1);
  stroke(255);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  line(oX, oY, aX, aY);
  line(aX, aY, bX, bY);
  line(bX, bY, cX, cY);
  line(cX, cY, dX, dY);
  line(dX, dY, eX, eY);

  a1 += 0.1;
  a2 -= 0.2;
  a3 += 0.3;
  a4 -= 0.4;
  a5 += 0.5;
}
