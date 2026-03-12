int offsetX, offsetY;
PImage img;

void setup() {
  size(800, 800, P3D);
  background(0);
  smooth();
  offsetX = width/2;
  offsetY = height/2;
  img = loadImage("brandom.jpg");
  float f = 0.05;
  img.resize(round(img.width*f), round(img.height*f));
}

void draw() {
  background(0);
  pushMatrix();
  translate(offsetX, offsetY);
  camControl(0.1); // Set up your rotation;
  grid(50, 10); // Set up your gird;
  //LET US WORK BETWEEN THIS LINE...

  mesh(0, 0, 4, img);

  //... AND THIS LINE
  popMatrix();
}

void mesh(float posX, float posY, float scayl, PImage colorData) {

  pushMatrix();
  translate(posX-(colorData.width*scayl)/2, posY-(colorData.height*scayl)/2);

  noStroke();
  for (int i=0; i<colorData.width-1; i++) { //<---- REMOVE ONE! (…-1)
    beginShape(QUAD_STRIP);
    for (int j=0; j<colorData.height; j++) {
      fill(colorData.get(i, j));
      vertex(i*scayl, j*scayl, scayl, scayl);
      vertex((i+1)*scayl, j*scayl, scayl, scayl);
    }
    endShape();
  }

  popMatrix();
}



void camControl(float speed) {
  rotateX(radians(65));
  rotateZ(radians(frameCount*speed));
}


void grid(int sz, int res) {
  int len = sz*res;
  int offset = -len/2;


  stroke(255, 0, 0);
  line(0, 0, 0, len/2., 0, 0); // X axis
  stroke(0, 255, 0);
  line(0, 0, 0, 0, len/2., 0); // Y axis
  stroke(0, 0, 255);
  line(0, 0, 0, 0, 0, len/2.); // Z axis

  stroke(255, 64);
  noFill();
  pushMatrix();
  translate(offset, offset);
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
