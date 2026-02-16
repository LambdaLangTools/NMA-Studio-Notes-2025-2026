float angle = 0;

void setup() {
  size(800, 800, P2D);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);  
  float cX = width/2;
  float cY = height/2;
  float a = radians(angle);
  float r = 200;
  float pX = cX + cos(a)*r;
  float pY = cX + sin(a)*r; 

  strokeWeight(3);
  stroke(255, 0, 65);
  noFill();
  line(cX, cY, pX, pY);
  line(width/2, 0, width/2, height);
  line(0, height/2, width, height/2);
  ellipse(cX, cY, 2*r, 2*r);

  noStroke();
  fill(255);
  ellipse(cX, cY, 20, 20);
  ellipse(pX, pY, 10, 10);
  ellipse(cX+r,pY,10,10);
  ellipse(pX,cY+r,10,10);

  strokeWeight(1);
  stroke(255);
  line(cX+r, pY, pX, pY);
  line(pX, cY+r, pX, pY);
  line(cX+r,cY+r,cX-r,cY+r);
  line(cX+r,cY+r,cX+r,cY-r);

  angle-=0.5;
}
