//PMOUSE ABSOLUTE VALUE VARIABLE LINE WEIGHT


void setup() {
  size(1280,720);
  background(255);
}

void draw() {
  stroke(255,0,0);
  strokeWeight(abs(pmouseX - mouseX));
  line(pmouseX,pmouseY,mouseX,mouseY);
}