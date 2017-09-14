//PMOUSE from demo exploring pmouseX, pmouseY

void setup() {
  size(1280,720);
  background(255,100,100);
}

void draw() {
  stroke(100,100,255);
  strokeWeight(5);
  line(mouseX,mouseY,pmouseX,pmouseY);
}