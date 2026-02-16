
void setup() {
  int x = 3;
  String a = "AH!";
  String c = repeat(x, a);
  println(x+" * \""+a+"\" = "+c);
}

String repeat(int times, String str) {
  
  String result = "";
  for (int i=0; i<times; i = i+1) {
    result = result + str;
  }
  return result;
}
