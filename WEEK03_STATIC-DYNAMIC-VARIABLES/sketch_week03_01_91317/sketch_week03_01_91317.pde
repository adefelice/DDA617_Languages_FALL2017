//STATIC VS DYNAMIC

//the code in setup block runs once.
void setup() {
  size(1280,720);
  background(255);
}

//the code in draw block run repeatedly.

void draw() {
  line(0,0,mouseX,mouseY);
  ellipse(mouseX,mouseY,50,50);
}