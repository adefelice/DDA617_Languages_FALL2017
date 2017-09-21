// for loops

void setup() {
  size(700,700);
  background(255);
  frameRate(2);
}

void draw() {
  for (int i = 1; i <= 10; i = i + 1) {
    println(i);
  }
  for (int i = 0; i < width; i = i + 50) {
    line(i,0,i,height);
  }
  for (int i = 0; i < height; i = i + 50) {
    line(0,i,width,i);
  }
}
  
  