
void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}

void draw() {
  background(0, 0, 255);
  
  float cX = width/2;
  float cY = height/2;
  float a = radians(45);
  float r = 300;
  float pX = cX + cos(a)*r;
  float pY = cX + sin(a)*r;
  
  noStroke();
  fill(255);
  ellipse(cX,cY,20,20);
  ellipse(pX,pY,10,10);
  stroke(255);
  line(cX,cY,pX,pY);
  
  
  
}
