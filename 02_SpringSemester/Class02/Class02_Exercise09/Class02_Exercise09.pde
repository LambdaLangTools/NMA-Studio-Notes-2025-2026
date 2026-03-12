int offsetX, offsetY;
PImage img, bump;

void setup() {
  size(900, 900, P3D);
  background(255);
  smooth();
  offsetX = width/2;
  offsetY = height/2;
  img = loadImage("brandomFace.png");
  float f = 0.5;
  img.resize(round(img.width*f), round(img.height*f));
  bump= img.copy();
  bump.filter(BLUR, 4);
}

void draw() {
  background(255);
  ortho();
  pushMatrix();
  translate(offsetX, offsetY);
  camControl(0.3); // Set up your rotation;
  //grid(50, 10); // Set up your gird;
  //LET US WORK BETWEEN THIS LINE...

  mesh(0, 0, 2, img, bump);

  //... AND THIS LINE
  popMatrix();
}

void mesh(float posX, float posY, float scayl, PImage colorData, PImage bumpData) {

  pushMatrix();
  rotateX(-HALF_PI);
  translate(posX-(colorData.width*scayl)/2, posY-(colorData.height*scayl)/2);


  noStroke();
  for (int i=0; i<colorData.width-1; i++) { //<---- REMOVE ONE! (…-1)
    beginShape(QUAD_STRIP);
    for (int j=0; j<colorData.height; j++) {

      //THIS
      color thisPix = colorData.get(i, j);
      float thisPixZ = map(brightness(thisPix), 0, 255, -50, 50);
      color thisBump = bumpData.get(i, j);
      float thisBumpZ = map(brightness(thisBump), 0, 255, -200, 200);

      //THAT : The NEXT row
      color thatPix = colorData.get(i+1, j);
      float thatPixZ = map(brightness(thatPix), 0, 255, -50, 50);
      color thatBump = bumpData.get(i+1, j);
      float thatBumpZ = map(brightness(thatBump), 0, 255, -200, 200);

      float thisZ = thisBumpZ+thisPixZ;
      float thatZ = thatBumpZ+thatPixZ;

      float alpha = map(brightness(thisPix), 0, 255, 255, 0);

      fill(thisPix, alpha);
      vertex(i*scayl, j*scayl, thisZ);
      vertex((i+1)*scayl, j*scayl, thatZ);
    }
    endShape();
  }

  popMatrix();
}



void camControl(float speed) {
  rotateX(radians(90));
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
