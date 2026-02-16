
void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}


void draw(){
  
  float x = (frameCount*0.5)%width;
  
  float sinF = sin(radians(x));
  float cosF = cos(radians(x));
  float tanF = tan(radians(x));
  
  float sinR = map(sinF,-1,1,1*height/3,0*height/3);
  float cosR = map(cosF,-1,1,2*height/3,1*height/3);
  float tanR = constrain(map(tanF,-2,2,3*height/3,2*height/3),2*height/3,height);
  
  stroke(255);
  point(x,sinR);
  point(x,cosR);
  point(x,tanR);
  
}
