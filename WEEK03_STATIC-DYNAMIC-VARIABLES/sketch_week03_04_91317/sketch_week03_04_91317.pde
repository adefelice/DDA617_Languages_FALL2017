//VARIABLES INTEGERS TYPES

int circleSize = 0;
int circleX = 100;
int circleY = 100;


void setup() {
  size(1280,720);
}

void draw() {
  background(255);
  stroke(0);
  fill(175);
  ellipse(circleX,circleY,circleSize,circleSize);
  circleSize = circleSize + 1;
  circleX = circleX + 1;
}