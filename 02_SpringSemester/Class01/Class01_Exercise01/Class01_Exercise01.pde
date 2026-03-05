int offsetX, offsetY;
PVector[] particles;

void setup() {
  size(800, 800, P3D);
  background(0);
  smooth();
  offsetX = width/2;
  offsetY = height/2;
  
  int dimX = 100;
  int dimY = 100;
  int dimZ = 100;
  particles = new PVector[4000];
  for(int i=0; i<particles.length; i++){
    float pX = random(-dimX/2,dimX/2);
    float pY = random(-dimY/2,dimY/2);
    float pZ = random(-dimZ/2,dimZ/2);
    particles[i] = new PVector(pX,pY,pZ);
  }
}

void draw() {
  background(0);
  pushMatrix();
  translate(offsetX, offsetY);
  camControl(0.1); // Set up your rotation;
  grid(50, 10); // Set up your gird;
  //LET US WORK BETWEEN THIS LINE...
  
  stroke(255);
  for(int i=0; i<particles.length; i++){
    point(particles[i].x,particles[i].y,particles[i].z);
  }
  
  
  //... AND THIS LINE
  popMatrix();
}

void camControl(float speed){
 rotateX(radians(65));
 rotateZ(radians(frameCount*speed));
}


void grid(int sz, int res) {
  int len = sz*res;
  int offset = -len/2;
  
  
  stroke(255,0,0);
  line(0,0,0,len/2.,0,0); // X axis
  stroke(0,255,0);
  line(0,0,0,0,len/2.,0); // Y axis
  stroke(0,0,255);
  line(0,0,0,0,0,len/2.); // Z axis
  
  stroke(255,64);
  noFill();
  pushMatrix();
  translate(offset,offset);
  for (int i=0; i<sz; i++) {
    beginShape(QUAD_STRIP);
    for (int j=0; j<sz+1; j++) {
      vertex(i*res, j*res);
      vertex((i+1)*res, (j)*res);
    }
    endShape();
  }
  popMatrix();
}
