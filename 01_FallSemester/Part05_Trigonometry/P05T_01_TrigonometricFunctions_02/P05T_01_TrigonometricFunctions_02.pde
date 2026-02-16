
void setup() {
  size(800, 800);
  background(0, 0, 255);
  smooth();
}


void draw() {
  
  background(0, 0, 255);
  stroke(255);
  
  for (int i=0; i<width; i++) {

    float sinF = sin(radians(i+frameCount));
    float cosF = cos(radians(i+frameCount));
    float tanF = tan(radians(i+frameCount));

    float sinR = map(sinF, -1, 1, 1*height/3, 0*height/3);
    float cosR = map(cosF, -1, 1, 2*height/3, 1*height/3);
    float tanR = constrain(map(tanF, -2, 2, 3*height/3, 2*height/3), 2*height/3, height);

    point(i, sinR);
    point(i, cosR);
    point(i, tanR);
  }
}
