
void setup() {
  int x = 3;
  int n = 10;
  int c = repeat(x, n);
  println(x+" * "+n+" = "+c);
}

int repeat(int times, int num) {
  
  int result = 0;
  
  for (int i=0; i<times; i++) {
    result += num;
  }

  return result;
}
